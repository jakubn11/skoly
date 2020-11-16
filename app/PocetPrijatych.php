<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PocetPrijatych extends Model
{
    /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'pocet_prijatych';
    protected $primaryKey = 'id_pocet_prijatych';

     /**
     * Indicates if the model should be timestamped.
     *
     * @var bool
     */
    public $timestamps = false;
}
