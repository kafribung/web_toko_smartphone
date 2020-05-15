<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

use Auth;

class Smartphone extends Model
{
    protected $touches = ['user'];
    protected $guarded = ['created_at', 'updated_at']; 

    // Relation  many to  one(user)
    public function user()
    {
        return $this->belongsTo('App\Models\User');
    }

    // Mutator
    public function getImgAttribute($value)
    {
        return url('smartphones', $value);
    }

    // Logic Login
    public function isLogin()
    {
        $user= Auth::check();
        if ($user) {
            if (Auth::user()->id == $this->user_id) {
                return true;
            }
        } return false;
    }
}
