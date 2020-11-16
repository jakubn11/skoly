<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Obor extends Model
{
    /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'obor';
    protected $primaryKey = 'id_obor';

     /**
     * Indicates if the model should be timestamped.
     *
     * @var bool
     */
    public $timestamps = false;
}
