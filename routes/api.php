<?php

use Illuminate\Http\Request;

Route::get('/users', 'Api\LoginController@index');
Route::get('/getPartners', 'Api\HomeController@getPartners');
Route::get('/getSliders', 'Api\HomeController@getSliders');
