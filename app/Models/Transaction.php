<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Transaction extends Model
{
    use HasFactory;

    protected $fillable = ['user_id', 'subscription_id ', 'stripe_payment_id ', 'amount', 'status','currency'];

    public function user()
    {
        return $this->belongsTo(Member::class);
    }

    public function plan()
    {
        return $this->belongsTo(Plan::class);
    }

    public function paymentMode()
    {
        return $this->belongsTo(PaymentMode::class);
    }
}
