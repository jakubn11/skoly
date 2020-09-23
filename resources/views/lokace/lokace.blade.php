@extends('layout.app')

@section('content')


<div id="map">
</div>

<script>
    // Initialize and add the map
    function initMap() {
      // The location of Uluru
      var uluru = {lat: 49.032687, lng: 17.643536};
      // The map, centered at Uluru
      var map = new google.maps.Map(
          document.getElementById('map'), {zoom: 10, center: uluru});
      // The marker, positioned at Uluru
      var marker = new google.maps.Marker({position: uluru, map: map});
      
      
    }
        </script>
        
        <script 
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAwbQy3UJeG-GeCe0aVkjj9Ozb5joSGR2o&callback=initMap" async defer type="text/javascript">
    </script>
    
@endsection


