<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Casts\Attribute;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Str;

class Payment extends Model
{
    /*
    |--------------------------------------------------------------------------
    | GLOBAL VARIABLES
    |--------------------------------------------------------------------------
    */

    protected $table = 'payments';
    protected $primaryKey = 'id';
    public $timestamps = true;
    protected $guarded = ['id'];
    protected $fillable = [
        'amount',
        'currency',
        'description',
        'notify_url',
        'cancel_url',
        'status',
        'token',
        'first_name',
        'last_name',
        'email',
        'card_number',
        'card_expiration',
        'card_cvv',
    ];

    /*
    |--------------------------------------------------------------------------
    | FUNCTIONS
    |--------------------------------------------------------------------------
    */

    /**
     * Save the model to the database.
     *
     * @param  array  $options
     * @return bool
     */
    public function save(array $options = [])
    {
        if (!$this->exists) {
            $this->token = $this->generateToken();
        }

        return parent::save($options);
    }

    /**
     * Generate a unique token.
     *
     * @return string
     */
    protected function generateToken()
    {
        return Str::uuid();
    }

    /*
    |--------------------------------------------------------------------------
    | RELATIONS
    |--------------------------------------------------------------------------
    */

    /*
    |--------------------------------------------------------------------------
    | SCOPES
    |--------------------------------------------------------------------------
    */

    /*
    |--------------------------------------------------------------------------
    | ATTRIBUTES
    |--------------------------------------------------------------------------
    */

    protected function cardNumberLast4Digits(): Attribute
    {
        return Attribute::make(
            get: fn () => $this->card_number ? substr($this->card_number, -4) : null
        );
    }
}
