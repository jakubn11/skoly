<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ZpetnaVazba extends Model
{
    /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'zpetna_vazba';

     /**
     * Indicates if the model should be timestamped.
     *
     * @var bool
     */
    public $timestamps = false;
}
