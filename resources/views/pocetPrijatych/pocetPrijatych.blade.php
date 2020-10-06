@extends('layout.app')

@section('content')
  
<div class="row">
    <div class="col-sm-3">
        <div class="card">
            <article class="card-group-item">
                <header class="card-header">
                    <h6 class="title">Názvy školy</h6>
                </header>
                <div class="filter-content">
                    <div class="card-body">
                    <form>
                        @foreach ($obor as $nazev)
                        <label class="form-check-inline">
                          <input class="form-check-input" type="checkbox" value="">
                          <span class="form-check-label">                         
                                {{ $nazev->nazev_oboru }}
                          </span>
                        </label> 
                        @endforeach                      
                    </form>
                    </div> 
                </div>
            </article> 
            
        </div> 
            </div>
    <div class="col-sm-9">
        <div class="card">
            <article class="card-group-item">
                <header class="card-header">
                    <h6 class="title">Názvy školy</h6>
                </header>
                <div class="filter-content">
                    <div class="card-body">
                    <form>
                        @foreach ($pocet as $pocetPrijatych)
                        <label class="form-check-inline">
                          <input class="form-check-input" type="checkbox" value="">
                          <span class="form-check-label">                         
                                {{ $pocetPrijatych->nazev_skoly }}
                          </span>
                        </label> 
                        @endforeach                      
                    </form>
                    </div> 
                </div>
            </article> 
            
        </div> 
            </div>
</div>

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

 {{ $pocet->links() }}

 @endsection