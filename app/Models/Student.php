<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Prettus\Repository\Contracts\Transformable;
use Prettus\Repository\Traits\TransformableTrait;

class Student extends BaseModel implements Transformable
{
    use TransformableTrait;

    protected $table = 'k_student';

    protected $fillable = [];

}
