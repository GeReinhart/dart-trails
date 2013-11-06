//Auto-generated by RSP Compiler
//Source: traceProfileViewer.rsp.html
part of trails;

/** Template, traceProfileViewer, for rendering the view. */
Future traceProfileViewer(HttpConnect connect, {traceAnalysisRenderer}) { //#2
  var _t0_, _cs_ = new List<HttpConnect>();
  HttpRequest request = connect.request;
  HttpResponse response = connect.response;
  Rsp.init(connect, "text/html; charset=utf-8");

  response.write("""

      <div id="traceProfile" ></div> 
"""); //#2

  if (traceAnalysisRenderer != null) { //if#4

    response.write("""        <script type="text/javascript" src="https://www.google.com/jsapi"></script>
        <script type="text/javascript">
          google.load("visualization", "1", {packages:["corechart"]});
          google.setOnLoadCallback(drawChart);
          function drawChart() {
            
            
            
            var data = google.visualization.arrayToDataTable([
                                                              ['x', 'Altitude', 'Altitude','Altitude', 'Altitude', 'Altitude' , 'Altitude' , 'Altitude' ],

"""); //#5

    for (var point in traceAnalysisRenderer.points) { //for#16

      response.write("""                                                              [  """); //#17

      response.write(Rsp.nnx(point.distanceInMeters)); //#17


      response.write(""",   """); //#17

      response.write(Rsp.nnx(traceAnalysisRenderer.skyElevetionInMeters)); //#17


      response.write(""", """); //#17

      response.write(Rsp.nnx(point.elevetionInMeters)); //#17


      response.write(""", """); //#17

      response.write(Rsp.nnx(point.getSnowInMeters(traceAnalysisRenderer.skyElevetionInMeters))); //#17


      response.write(""", """); //#17

      response.write(Rsp.nnx(point.scatteredInMeters)); //#17


      response.write(""", """); //#17

      response.write(Rsp.nnx(point.thornyInMeters)); //#17


      response.write(""", """); //#17

      response.write(Rsp.nnx(point.leafyInMeters)); //#17


      response.write(""", """); //#17

      response.write(Rsp.nnx(point.meadowInMeters)); //#17


      response.write("""           ],
"""); //#17
    } //for

    response.write("""                                                              
                                                              ]);
                                                                  
                                                                  
            /*
            
            chartArea:{left:20,top:0,width:"50%",height:"75%"}
            
                                       "width" : 200,
                                       "height" : 100,
            */
                                                                  
    
            var options = {

                           "curveType": "function",
                           "vAxis": {"maxValue": 10},
                           "series": [
                                      {"color": '#5B6DE3', "lineWidth": 0, "areaOpacity": 1,  "visibleInLegend": false},
                                      {"color": 'black', "lineWidth": 1, "areaOpacity": 1,  "visibleInLegend": false},
                                      {"color": 'white', "lineWidth": 0, "areaOpacity": 1,  "visibleInLegend": false},
                                      {"color": '#C2A385', "lineWidth": 0, "areaOpacity": 1,  "visibleInLegend": false},
                                      {"color": '#4C8033', "lineWidth": 0, "areaOpacity": 1,  "visibleInLegend": false},
                                      {"color": '#99FF66', "lineWidth": 0, "areaOpacity": 1,  "visibleInLegend": false},
                                      {"color": '#FFE066', "lineWidth": 0, "areaOpacity": 1,  "visibleInLegend": false}
                                      ]
            };
    
            var chart = new google.visualization.AreaChart(document.getElementById('traceProfile'));
            chart.draw(data, options);
          }
        </script>
"""); //#19
  } //if

  return Rsp.nnf();
}
