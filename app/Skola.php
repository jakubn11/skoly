<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Skola extends Model
{
    /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'skola';
    protected $primaryKey = 'id_skola';

     /**
     * Indicates if the model should be timestamped.
     *
     * @var bool
     */
    public $timestamps = false;

    
}
