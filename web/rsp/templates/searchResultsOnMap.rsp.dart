//Auto-generated by RSP Compiler
//Source: searchResultsOnMap.rsp.html
part of trails;

/** Template, searchResultsOnMap, for rendering the view. */
Future searchResultsOnMap(HttpConnect connect, {lightTraceRenderers}) { //#2
  var _t0_, _cs_ = new List<HttpConnect>();
  HttpRequest request = connect.request;
  HttpResponse response = connect.response;
  if (!Rsp.init(connect, "text/html; charset=utf-8"))
    return new Future.value();

  response.write("""

    <script type="text/javascript"
      src="https://maps.googleapis.com/maps/api/js?key=AIzaSyACqUcoVGLVERGKxv09yqg9jv1iykUDJjA&sensor=false">
    </script>
    <script type="text/javascript">


      function initialize() {
        var myLatlng = new google.maps.LatLng("""); //#2

  response.write(Rsp.nnx(lightTraceRenderers.baryCenter.latitude)); //#10


  response.write("""  ,"""); //#10

  response.write(Rsp.nnx(lightTraceRenderers.baryCenter.longitude)); //#10


  response.write(""");
        var mapOptions = {
          zoom: 9,
          center: myLatlng
        }
        var map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);

      
"""); //#10

  for (var lightTraceRenderer in lightTraceRenderers.traces) { //for#18

    response.write("""           new google.maps.Marker({
            position:   new google.maps.LatLng("""); //#19

    response.write(Rsp.nnx(lightTraceRenderer.trace.startPointLatitude)); //#20


    response.write("""  ,"""); //#20

    response.write(Rsp.nnx(lightTraceRenderer.trace.startPointLongitude)); //#20


    response.write("""),
            map: map,
            title: \""""); //#20

    response.write(Rsp.nnx(lightTraceRenderer.title)); //#22


    response.write(""""
          });
"""); //#22
  } //for

  response.write("""      
      }
      
      google.maps.event.addDomListener(window, 'load', initialize);


      
    </script>

    <div id="map-canvas"  class="space" ></div>

"""); //#25

  return new Future.value();
}
