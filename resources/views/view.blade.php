<div class="container">
	
<table>
	@foreach($show as $user)
	<tr>
		<td>
			{{$user->name}}
		</td>
		<td>
			{{$user->email}}
		</td>
		
	</tr>
	@endforeach
</table>
	<div class="pagination">
		{!!$show->render()!!}
	</div>
</div>