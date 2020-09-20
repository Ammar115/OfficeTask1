<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Skill extends Model
{
    //
    protected $fillable = [
        'registry_id', 'skill_id', 'skill_name', 'skill_description',
    ];
}
