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

<div class="text-warning  form-error-message" >Actuellement en construction : localisation sur une carte des traces gps</div>
"""); //#2

  return new Future.value();
}
