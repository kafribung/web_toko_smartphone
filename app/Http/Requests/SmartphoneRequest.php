<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class SmartphoneRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'title' => ['required', 'string', 'min:3' , 'max:100', 'unique:smartphones'],
            'img'   => ['required', 'mimes:png,jpg,jpeg'],
            'price' => ['required', 'integer'],
            'slug' =>  ['string'],
            'description' => ['required', 'string']
        ];
    }
}
