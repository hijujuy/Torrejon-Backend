<?php

namespace App\Http\Controllers\Sucursale;

use App\Http\Controllers\Controller;
use App\Http\Resources\Sucursal\SucursalCollection;
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
