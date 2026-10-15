<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Stripe\Stripe;
use Stripe\Checkout\Session;
use App\Models\Member;
use App\Models\PaymentMode;
use App\Models\Subscription;
use App\Models\Transaction;
use App\Models\Plan;
use Auth;

class SubscriptionController extends Controller
{
   public function processPayment(Request $request)
{
    Stripe::setApiKey(env('STRIPE_SECRET'));

    $memberId = $request->id; // Get member ID from form input

    // Fetch the member's details
    $member = \App\Models\Member::find($memberId);

    if (!$member) {
        return redirect()->back()->with('error', 'Member not found.');
    }

    $plan = Plan::where('id', 1)->first(); // Assuming a default plan

    $session = Session::create([
        'payment_method_types' => ['card'],
        'customer_email' => $member->email, // Use member's email instead of Auth user email
        'line_items' => [[
            'price_data' => [
                'currency' => 'USD',
                'product_data' => ['name' => $plan->name],
                'unit_amount' => $plan->price * 100,
            ],
            'quantity' => 1,
        ]],
        'mode' => 'subscription',
        'metadata' => ['member_id' => $memberId], // Attach member ID
        'success_url' => route('subscription.success', ['session_id' => '{CHECKOUT_SESSION_ID}']),
        'cancel_url' => route('subscription.cancel'),
    ]);

    return redirect($session->url);
}


   public function success(Request $request)
{
    Stripe::setApiKey(env('STRIPE_SECRET'));

    $session = \Stripe\Checkout\Session::retrieve($request->session_id);
    $subscription_id = $session->subscription;
    $memberId = $session->metadata->member_id;

    $subscription = Subscription::create([
        'user_id' => Auth::user()->id,
        'plan_id' => Plan::where('stripe_plan_id', $session->metadata->plan_id)->first()->id,
        'stripe_subscription_id' => $subscription_id,
        'status' => 'active',
    ]);

    Transaction::create([
        'user_id' => Auth::user()->id,
        'subscription_id' => $subscription->id,
        'stripe_payment_id' => $session->payment_intent,
        'amount' => $session->amount_total / 100,
        'currency' => 'USD',
        'status' => 'succeeded',
    ]);

    return redirect()->route('thank-you')->with('success', 'Subscription successful!');
}


    public function cancel()
    {
        return redirect()->route('dashboard')->with('error', 'Subscription cancelled!');
    }
}
