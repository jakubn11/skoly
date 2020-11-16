<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Mesto extends Model
{    
    /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'mesto';
    protected $primaryKey = 'id_mesto';

     /**
     * Indicates if the model should be timestamped.
     *
     * @var bool
     */
    public $timestamps = false;
}
