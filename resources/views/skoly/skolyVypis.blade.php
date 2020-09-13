@extends('layout.app')

@section('content')
  
<table class="table">
    <thead>
        <tr>
            <th>Název školy</th>
            <th>Město</th>
        </tr>
    </thead>
    @foreach ($skola as $s)
   <tbody>
    <tr>
       <td>{{ $s->nazev }}</td>
       <td>{{ $s->nazev_mesta }}</td>
    </tr>
</tbody>
    @endforeach
 </table>

@endsection