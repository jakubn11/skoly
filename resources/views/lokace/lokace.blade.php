@extends('layout.app')

@section('content')


<div id="map">
</div>

<script>
    // Initialize and add the map
    function initMap() {
      // The location of Uluru
      var uluru = {lat: 20, lng: 20};
      // The map, centered at Uluru
      var map = new google.maps.Map(
          document.getElementById('map'), {zoom: 10, center: uluru});
      // The marker, positioned at Uluru
      var marker = new google.maps.Marker({position: uluru, map: map});     
    }
        </script>
        
        <script async defer 
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAwbQy3UJeG-GeCe0aVkjj9Ozb5joSGR2o&callback=initMap">
    </script>
@endsection


