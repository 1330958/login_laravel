<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use DB;
use App\Http\Requests\stuRequest;

class mycont extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
    public function stuview()
    {
       // return "Its my code";
       // return view('iubview');
        return view('mydbview');
    }
    public function stuprocess(stuRequest $request)
    {
      // $value=$request->all();
      // dd($value);
        $name=$request->name;
        $email=$request->email;
        //dd($name);
        $sql=DB::insert(" INSERT INTO info (name,email)
         VALUES ('$name','$email')");

    }





    public function showStu2()
    {
       // return "Its my code";
       // return view('iubview');
        return view('mydbview');
    }

    //crud////////////////////////////////////////
     
    public function crudv()
    {
       $sql=DB::select(" SELECT * from crud");
       //dd($sql);
      $data = view('crudview')->with('age',$sql);
      return $data;      
    }

    public function editcont($id)
    {
       
       $upp=DB::select("SELECT * from crud where sl='$id'");
     //  dd($upp);

       $editvalue_pass = view('edit')->with('editvalue',$upp);

      return $editvalue_pass;      
    }
    public function update_db(Request $request)
    {
        $Idpass = $request->frm_sl;
        $idSet=$request->frm_id;
        $passSet=$request->frm_pass;
        $emailSet=$request->frm_name;
        //dd($Idpass);
       $upp=DB::update("UPDATE crud SET Id='$idSet',pass='$passSet',name='$emailSet' where sl='$Idpass'");

    }

    public function delete_db($id){
    $sql=DB::delete("DELETE from crud where sl='$id'");
    if ($sql) {
        echo "Record has been deleted";
    }
    }

    //end crud///////////////////////////////////
  
   //$upp=DB::update("UPDATE crud SET ID='',pass='',name='' where sl='$id");

   //pagination///////////////////////////////////////

    public function show2()
    {
     $rec=DB::table('info')->paginate(3);
     $data=view('view');
     $data->show=$rec;
     return $data;
     }
}
?>