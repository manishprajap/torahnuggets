<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PaymentMode extends Model
{
    use HasFactory;

    protected $fillable = ['user_id ', 'stripe_payment_method_id','is_default'];

    public function transactions()
    {
        return $this->hasMany(Transaction::class);
    }
}
