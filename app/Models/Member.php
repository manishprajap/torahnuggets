<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Laravel\Sanctum\HasApiTokens;
use Illuminate\Notifications\Notifiable;
use App\Notifications\MemberResetPasswordNotification;

class Member extends Authenticatable
{
    use HasApiTokens, HasFactory;

   use Notifiable;
    protected $table = 'members';
	
    protected $fillable = [
    'name', 'email', 'password', 'mobile', 'image', 'address', 'gender', 'dob','stripe_customer_id'
];

	 protected $guarded = []; // Or define fillable fields
    protected $hidden = ['password']; // Hides password when returning data

    protected $casts = ['dob' => 'date'];
	
	public function sendPasswordResetNotification($token)
    {
        $this->notify(new MemberResetPasswordNotification($token));
    }
}
