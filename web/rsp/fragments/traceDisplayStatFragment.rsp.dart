//Auto-generated by RSP Compiler
//Source: traceDisplayStatFragment.rsp.html
part of trails;

/** Template, traceDisplayStatFragment, for rendering the view. */
Future traceDisplayStatFragment(HttpConnect connect) { //#2
  var _t0_, _cs_ = new List<HttpConnect>();
  HttpRequest request = connect.request;
  HttpResponse response = connect.response;
  if (!Rsp.init(connect, "text/html; charset=utf-8"))
    return new Future.value();

  return Rsp.nnf(traceStatisticsViewer(new HttpConnect.chain(connect))).then((_) { //include#2

    return new Future.value();
  }); //end-of-include
}
