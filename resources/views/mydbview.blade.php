<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>

<form action="stuprocess" method="POST">
{{csrf_field()}}
  Name:<br>
  <div><input type="text" name="name">
  @if ($errors->has('name'))<p style="color:red;">
  {!!$errors->first('name')!!}</p> @endif
  </div>
  <br>
  Email:<br>
  <div><input type="email" name="email">
  @if ($errors->has('email'))<p style="color:red;">
  {!!$errors->first('email')!!}</p> @endif
  </div>
  <br><br>
  <input type="submit" value="Submit">
</form> 

</body>
</html>
               
                               



