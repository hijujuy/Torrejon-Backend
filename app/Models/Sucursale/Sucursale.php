<?php

namespace App\Models\Sucursale;

use App\Models\Client\Client;
use App\Models\Configuration\Zona;
use Carbon\Carbon;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Sucursale extends Model
{
    use HasFactory;
    use SoftDeletes;
    protected $fillable = [
        "nombre",
        "direccion",
        "telefono",
        "referencia",                
        "ubigeo_provincia",
        "ubigeo_departamento",
        "ubigeo_localidad",
        "provincia",
        "departamento",
        "localidad",
        "state",
        "client_id",
        "zona_id"
    ];

    public function setCreatedAtAttribute($value) {
        date_default_timezone_set("America/Argentina/Jujuy");
        $this->attributes["created_at"] = Carbon::now();
    }

    public function setUpdatedAtAttribute($value) {
        date_default_timezone_set("America/Argentina/Jujuy");
        $this->attributes["updated_at"] = Carbon::now();
    }

    public function zona(){
        return $this->belongsTo(Zona::class);
    }

    public function client(){
        return $this->belongsTo(Client::class);
    }
}
