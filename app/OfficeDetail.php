<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class OfficeDetail extends Model
{
    //
    protected $fillable = [
        'registry_id', 'phone_num', 'cnic_num', 'post', 'work_description', 'exchange_num', 'office_id', 'office_email',
    ];

    function user(){
        return $this->belongsTo('App\User','registry_id');
    }
}
