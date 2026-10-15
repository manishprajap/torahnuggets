<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Member;
use Hash;
use auth;
use DB;

class MemberController extends Controller
{
  public function store(Request $request)
{
    $request->validate([
        'name' => 'required',
        'email' => 'required|email|unique:members',
        'password' => 'required|min:6',
        'mobile' => 'required',
        'address' => 'nullable|string',
        'gender' => 'nullable|in:male,female,other',
        'dob' => 'nullable|date',
    ]);

    $member = new Member();
    $member->name = $request->name;
    $member->email = $request->email;
    $member->password = Hash::make($request->password);
    $member->mobile = $request->mobile;
    $member->gender = $request->gender;
    $member->dob = $request->dob;
    $member->address = $request->address;
    $member->save();

    return redirect('user-login')->with('message', "Your registration is successful!");
}

	
	
	public function memberlogin(Request $request)
{
    // Validate request inputs
    $request->validate([
        'email' => 'required|email',
        'password' => 'required|min:6',
    ]);

    // Attempt login
    if (Auth::guard('member')->attempt(['email' => $request->email, 'password' => $request->password])) {
        return redirect('member-dashboard')->with('message', 'Login successful!');
    }

    return back()->with('error', 'Invalid credentials provided.');
}

	
	public function memberAdd(Request $request)
	{
		$member = new Member();
		$member->plan = $request->plan;
		$member->save();
		return redirect()->route('audio-player', ['id' => $member->id]);
	}
	
	public function memberupdate(Request $request)
	{
		$member = Member::find($request->id);;
		$member->name = $request->name;
		$member->email = $request->email;
		$member->save();
		return redirect()->route('add-payment', ['id' => $member->id]);
	}
	
	/* public function memberpayment(Request $request)
	{
		$member = Member::find($request->id);;
		$member->name = $request->name;
		$member->email = $request->email;
		$member->save();
		return redirect()->route('add-payment', ['id' => $member->id]);
	} */
	
	public function dashboard()
	{
		return view('member.dashboard');
	}
	
	
	
}
