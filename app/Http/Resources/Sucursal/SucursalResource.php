<?php

namespace App\Http\Resources\Sucursal;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class SucursalResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            "id" => $this->resource->id,
            "code" => $this->resource->code,            
            "nombre" => $this->resource->nombre,                        
            "direccion" => $this->resource->direccion,            
            "telefono" => $this->resource->telefono,            
            "referencia" => $this->resource->referencia,                        
            "ubigeo_provincia" => $this->resource->ubigeo_provincia,
            "ubigeo_departamento" => $this->resource->ubigeo_departamento,
            "ubigeo_localidad" => $this->resource->ubigeo_localidad,
            "provincia" => $this->resource->provincia,
            "departamento" => $this->resource->departamento,
            "localidad" => $this->resource->localidad,
            "client_id" => $this->resource->client_id,
            "client" => $this->resource->client ? [
                "id" => $this->resource->client->id,
                "codigo" => $this->resource->client->code,
                "nombre_completo" => $this->resource->client->surname . ' ' . $this->resource->client->name,
                "razon_social" => $this->resource->client->razon_social,
            ] : NULL,
            "zona_id" => $this->resource->zona_id,
            "zona" => $this->resource->zona ? [
                "id" => $this->resource->zona->id,
                "name" => $this->resource->zona->name  
            ] : NULL,
            "state" => $this->resource->state,
            "created_format_at" => $this->resource->created_at->format("Y-m-d h:i A")
        ];
    }
}
