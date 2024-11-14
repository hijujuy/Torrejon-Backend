<?php

namespace App\Http\Requests\Client;

use Illuminate\Contracts\Validation\Validator;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Http\Exceptions\HttpResponseException;
use Illuminate\Validation\Rule;

class UpdateClientRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        //dd($this->route('client'));
        //dd($this->all);
        return [            
            'n_document' => 'nullable|min:7|max:8|unique:clients,n_document,'.$this->route('client'),
            'email' => 'nullable|email|unique:clients,email,'.$this->route('client'),
            'cuit' => 'nullable|min:13|max:13|unique:clients,cuit,'.$this->route('client'),
            'code' => 'nullable|between:1,4|unique:clients,code,'.$this->route('client'),
            'client_segment_id' => 'required|integer|exists:client_segments,id',
            'state' => 'required|numeric'
        ]; 
    }

    public function failedValidation(Validator $validator)
    {
        throw new HttpResponseException(response()->json([
            'success'   => false,
            'message'   => 'Validation errors',
            'data'      => $validator->errors()
        ]));
    }

    public function messages(): array
    {        
        return [
            'n_document.unique' => 'Número documento ya existe',
            'n_document.min' => 'Número documento deber tener mínimo 7 dígitos',
            'n_document.max' => 'Número documento deber tener máximo 8 dígitos',
            'email.email' => 'Dirección de correo inválida',
            'email.unique' => 'Correo ya existe',
            'cuit.unique' => 'Cuit ya existe',
            'cuit.min' => 'Cuit deber tener hasta 13 caracteres',
            'cuit.max' => 'Cuit deber tener hasta 13 caracteres',
            'code.unique' => 'Código ya existe',
            'code.between' => 'Código entre 1 a 4 caracteres',
            'client_segment_id.required' => 'Tipo de cliente requerido',
            'client_segment_id.integer' => 'Tipo de cliente, valor id no válido',
            'client_segment_id.exists' => 'Tipo de cliente no existe',
            'state.required' => 'Estado requerido',
            'state.numeric' => 'Estado debe ser numérico',
        ]; 
    }
}
