@extends('layout.app')

@section('content')


<div id="map">
</div>

<script>
    function initMap() {
        
        var options ={
            zoom: 2,
            center: {lat:20.2554, lng:20.2154}
        }

        var map = new
        google.maps.Map(document.getElementById('map'), options);

        /*
        var marker = new google.maps.Marker({
            position: {lat:42.123, lng:-71.054},
            map:map
        });

        var infoWindow = new google.maps.InfoWindow({
            content: '<h4>Místo</h4>'
        });

        marker.addListener('click', function(){
            infoWindow.open(map, marker);
        });
        */
        addMarker({coords:{lat:42.123, lng:-71.054}});
        addMarker({coords:{lat: 25.761681, lng:-80.191788},
                    content: '<h4>Místo</h4>'
        });
        
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


