<?php

namespace App\Http\Controllers\Sucursale;

use App\Http\Controllers\Controller;
use App\Http\Resources\Sucursal\SucursalCollection;
use App\Models\Client\Client;
use App\Models\Configuration\Zona;
use App\Models\Sucursale\Sucursale;
use Illuminate\Http\Request;

class SucursaleController extends Controller
{
    public function index(Request $request)
    {
        //$search = $request->get("search");
        // Obtener valor via post
        $search = $request->search;
        $zona_id = $request->zona_id;

        $sucursales = Sucursale::filterAdvance($search,$zona_id)->orderBy("id","asc")->paginate(25);

        return response()->json([
            "total" => $sucursales->total(),
            "sucursales" => SucursalCollection::make($sucursales),
        ]);
    }

    public function config()
    {
        $zonas = Zona::where("state",1)->get();

        return response()->json([
            "zonas" => $zonas
        ]);
    }

    public function search_clients(Request $request)
    {
        $code = $request->get("code");
        $n_document = $request->get("n_document");
        $surname = $request->get("surname");

        $clients = Client::filterSucursal($code, $n_document, $surname)->where("state", 1)->orderBy("id","desc")->get();
        return response()->json([
            "clients" => $clients->map(function($client){
                return[
                    "id" => $client->id,
                    "code" => $client->code,
                    "n_document" => $client->n_document,
                    "cuit" => $client->cuit,
                    "surname" => $client->surname,
                    "name" => $client->name,
                    "razon_social" => $client->razon_social,
                    "client_segment" => $client->client_segment
                ];
            })
        ]);

    }

    public function search_zonas(Request $request)
    {
        $name = $request->get("name");

        $zonas = Zona::where("name","like","%".$name."%")->where("state", 1)->orderBy("id","desc")->get();

        return response()->json([
            "zonas" => $zonas->map(function($zona){
                return[
                    "id" => $zona->id,
                    "name" => $zona->name,
                    "description" => $zona->description
                ];
            })
        ]);

    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        
    }

    
}
