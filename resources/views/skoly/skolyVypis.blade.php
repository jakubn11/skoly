@extends('layout.app')

@section('content')
 
<div class="row">
    <div class="col-sm-5">
<div class="card">
	<article class="card-group-item">
		<header class="card-header">
			<h6 class="title">Název města</h6>
		</header>
		<div class="filter-content">
			<div class="card-body">
			<form>
                @foreach ($skola as $nazevMesta)
                <label class="form-check-inline">
				  <input class="form-check-input" type="checkbox" value="">
			         <span class="form-check-label">
                    {{ $nazevMesta->nazev_mesta }}
				  </span>
                </label> 
                @endforeach
			</form>

			</div> 
		</div>
	</article> 
	
</div> 
    </div>
    <div class="col-sm-7">
        <div class="card">
            <article class="card-group-item">
                <header class="card-header">
                    <h6 class="title">Název školy</h6>
                </header>
                <div class="filter-content">
                    <div class="card-body">
                    <form>
                        @foreach ($skola as $nazevSkoly)
                        <label class="form-check-inline">
                          <input class="form-check-input" type="checkbox" value="">
                             <span class="form-check-label">
                            {{ $nazevSkoly->nazev_skoly}}
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
            <th>Název školy</th>
            <th>Město</th>
        </tr>
    </thead>
    @foreach ($skola as $s)
   <tbody>
    <tr>
       <td>{{ $s->nazev_skoly }}</td>
       <td>{{ $s->nazev_mesta }}</td>
    </tr>
</tbody>
    @endforeach
 </table>

{{ $skola->links() }}

@endsection