<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|


Route::get('/', function () {
    return view('welcome');
});
/*
Route::get('/about',
	function(){
		return "This is my 1st laravel";
	}
);
Route::get('/myform',
	function(){
		return '
          <form>
          <div>
          Name: <input type="text" placeholder="Name"><br>
          Pass: <input type="text" placeholder="Pass"><br>
          <input type="submit" value="Submit" style="background-color:green ; color:yellow ; height:50px ; weight:80px"><br>
          </div>
          </form>
		';
	}
);

Route::get('/student/{id}/{id1}',
	function($id,$id1){
		return "ID is: $id and $id1";
	}
);

Route::get('/student2/{id}',
	function($id){
		return "Book ID is=>$id";
	}
)->where('id','[0-9]+');

Route::get('homeone',function(){
return "this is from redirect";
	});

Route::get(
'redirect1',function(){
return Redirect::to('homeone');
	}
	);

Route::get('/r2pass/{id}/{id1}',function($id,$id1){
    return "ID is: $id and $id1";
	});



Route::get(
'rvalue2',function(){
	return Redirect::to('r2pass/2/3');
	}
	);

Route::get('karim/{id?}',function($id=24){

  return"karim: $id";
	});




Route::get('karim2/{id?}/{id2?}',function($id='invalid',$id2='110'){

  return"karim: $id and $id2";
	});


Route::get('iubview', function () {
    return View::make('iubs2');
});

Route::get('iubview', function () {
    return View::make('iubs2');
});

Route::get('iubview', function () {
    return View::make('iub.iubs2'); // from iub folder
});


Route::get('iubpassdata/{uid}', function ($uid) {
	$var1='15';
	$data = view('iubs2')->with('age',$var1)->with('cty','Dhaka');
     $data['url'] = $uid;
     
	$data['stu_id'] = '1001001';
	$data['name'] = 'Mithun';
	$data['email'] = 'mithun@gmail.com';
	$data->birthday = '25-11-1994';
  //  return View::make('iubs2')->with('$stu_id');
  return $data;
});


Route::get('iubcontroller/{id}','iubcon2@sub');





// layout////////////using controller///////////////////////////////////////

Route::get('iub','bladeiub2@showStu');

//  database
Route::get('dbtest2',
     function(){
        $sql=DB::select(" select * from reg ");
        dd($sql);
     }
	);
Route::get('dbtest',
     function(){
      /*  $sql=DB::update(" UPDATE info
                                      SET name='IUB' ");
      $sql=DB::update(" DELETE FROM reg where ID='1111' ");	
       // dd($sql);
     }
	);
*/
//controller
//Route::get('conview','mycont@showStu');
/*

Route::get('student','mycont@stuview');
Route::post('stuprocess','mycont@stuprocess');
*/
//crud
Route::get('crud','mycont@crudv');
//Route::get('edit/{id}','mycont@editcont');
//Route::post('edtprcs','mycont@update_db');
//Route::get('delete/{id}','mycont@delete_db');
//end crud
//Pagination
//Route::get('pagi','mycont@show2');




?>

