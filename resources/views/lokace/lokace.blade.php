@extends('layout.app')

@section('content')


<div id="map">
</div>

<script>
    function initMap() {
        
        var options ={
            zoom: 10,
            center: {lat:49.005500, lng:17.173950}
        }

        var map = new
        google.maps.Map(document.getElementById('map'), options);

        @foreach($lokace as $skola)

        addMarker({
            coords:{
                lat: {{ $skola->geo_lat}},
                lng: {{ $skola->geo_long}}
            },
            content: "<div><h4>{{ trim($skola->nazev_skoly) }}</h4>" + 
                     "<strong>Město: </strong>{{ $skola->nazev_mesta }}</div>"+ 
                     "<strong>Počet přijatých: </strong>{{ $skola->pocet }}</div>"
        });
        
        @endforeach
     
        function addMarker(props)
        {
            var marker = new google.maps.Marker({
            position:props.coords,
            map:map
        });
        
        if(props.content)
            {
                var infoWindow = new google.maps.InfoWindow({
                content: props.content
            });

                marker.addListener('click', function(){
                infoWindow.close();
                infoWindow.open(map, marker);
            }); 
            }
            
        }
    }
        </script>
        
        <script async defer 
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAwbQy3UJeG-GeCe0aVkjj9Ozb5joSGR2o&callback=initMap">
    </script>
@endsection


