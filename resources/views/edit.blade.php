<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>

<form action="http://localhost:8000/edtprcs" method="POST">
{{csrf_field()}}
@foreach($editvalue as $editvalueone)


  ID:<br>
  <input type="text" name="frm_id" value="{{ $editvalueone->Id }}">
  <br>
  Password:<br>
  <input type="text" name="frm_pass" value="{{ $editvalueone->pass }}">
  <br><br>
  Name:<br>
  <input type="text" name="frm_name" value="{{ $editvalueone->name }}">
  <br><br>
  <input type="hidden" name="frm_sl" value="{{ $editvalueone->sl }}">
  @endforeach
  <input type="submit" value="Submit">
</form> 

</body>
</html>