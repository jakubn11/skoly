@extends('layout.app')

@section('content')
  
<table class="table">
    <thead>
        <tr>
            <th>Obor</th>
            <th>Škola</th>
            <th>Počet</th>
            <th>Rok</th>
        </tr>
    </thead>
    @foreach ($pocet as $p)
   <tbody>
    <tr>
       <td>{{ $p->nazev_oboru }}</td>
       <td>{{ $p->nazev_skoly }}</td>
       <td>{{ $p->pocet }}</td>
       <td>{{ $p->rok }}</td>
    </tr>
</tbody>
    @endforeach
 </table>

@endsection