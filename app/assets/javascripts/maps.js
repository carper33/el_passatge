var map;
var barcelona = new google.maps.LatLng(41.395603613998205, 2.157095799999979);

var MY_MAPTYPE_ID = 'custom_style';

function initialize() {

  var featureOpts = [
    {
      elementType: 'labels',
      stylers: [
        { visibility: 'on' }
      ]
    },
    {
      featureType: 'water',
      stylers: [
        { color: '#A9D2E7' }
      ]
    }
  ];

  var mapOptions = {
    zoom: 15,
    center: barcelona,
    mapTypeControlOptions: {
      mapTypeIds: [google.maps.MapTypeId.ROADMAP, MY_MAPTYPE_ID]
    },
    mapTypeId: MY_MAPTYPE_ID
  };

  map = new google.maps.Map(document.getElementById('map-canvas'),
      mapOptions);

  var image = 'https://dl.dropboxusercontent.com/u/79814994/cdn.images/logo_hotel_map.png';
  var hotelMarker = new google.maps.Marker({
      position: barcelona,
      map: map,
      icon: image
  });

  var styledMapOptions = {
    name: 'Custom Style'
  };

  var customMapType = new google.maps.StyledMapType(featureOpts, styledMapOptions);

  map.mapTypes.set(MY_MAPTYPE_ID, customMapType);
}

google.maps.event.addDomListener(window, 'load', initialize);