
<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
<table id="table">
	<thead>
	    <tr style="background-color:yellow">
			<th>Id</th>
			<th>pass</th>
			<th>name</th>
			<th>Action</th>
		</tr>
	</thead>

	<tbody id="tbl">
			@foreach ($age as $user)
			<tr>
			   <td>{{ $user->Id }}</td>
               <td>{{ $user->pass }}</td>
               <td>{{ $user->name }}</td>
               <td><a href='edit/{{$user->sl}}'>Edit</a>|<a href='delete/{{$user->sl}}' onClick = \"return confirm('Are you sure, want to delete?')\">Delete</a></td>
            </tr>
            @endforeach

							
		</tbody>
	</table>
</body>
</html>