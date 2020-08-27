<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use\DB;

class HomeController extends Controller
{
  public function getPartners(){
    $partners = DB::table('partners')->get();
    return response()->json($partners);
  }
  public function getSliders(){
    $sliders = DB::table('sliders')->get();
    return response()->json($sliders);
  }
}
