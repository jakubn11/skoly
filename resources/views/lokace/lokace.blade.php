@extends('layout.app')

@section('content')


<div id="map">
</div>

<script>
    // Initialize and add the map
    function initMap() {
      // The location of Uluru
      var uluru = {lat: 49.032687, lng: 17.643536};
      var uluru2 = {lat: 20, lng: 20};
      // The map, centered at Uluru
      var map = new google.maps.Map(
          document.getElementById('map'), {zoom: 10, center: uluru});
      // The marker, positioned at Uluru
      var marker = new google.maps.Marker({position: uluru, map: map});
      
      
    }
        </script>
        <!--Load the API from the specified URL
        * The async attribute allows the browser to render the page while the API loads
        * The key parameter will contain your own API key (which is not needed for this tutorial)
        * The callback parameter executes the initMap() function
        -->
        <script 
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAwbQy3UJeG-GeCe0aVkjj9Ozb5joSGR2o&callback=initMap" async defer type="text/javascript">
        </script>
    
@endsection


