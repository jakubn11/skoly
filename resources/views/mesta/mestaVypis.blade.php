@extends('layout.app')

@section('content')
  
<table class="table">
    <thead>
        <tr>
            <th>Název města</th>
        </tr>
    </thead>
    @foreach ($mesta as $m)
   <tbody>
    <tr>
       <td>{{ $m->nazev_mesta }}</td>
    </tr>
</tbody>
    @endforeach
 </table>

@endsection