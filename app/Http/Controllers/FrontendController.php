<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class FrontendController extends Controller
{
    public function index()
	{
		return view('front.home');
	} 
	
	public function about()
	{
		return view('front.about');
	}
	public function services()
	{
		return view('front.services');
	}
	
	public function contact()
	{
		return view('front.contact');
	}
	
	public function login()
	{
		return view('front.login');
	}
	public function signup()
	{
		return view('front.signup');
	}
	
	public function membership()
	{
		return view('front.membership');
	}
	
	
	public function audioPlayer($id)
	{
		return view('front.completemember', compact('id'));
	}
	public function addpayments($id)
	{
		return view('front.addpayment',compact('id'));
	}
	public function thankyou($id)
	{
		return view('front.thankyou',compact('id'));
	}
	public function coming()
	{
		return view('front.coming');
	}
}
