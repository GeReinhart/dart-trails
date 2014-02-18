//Auto-generated by RSP Compiler
//Source: sandbox.rsp.html
part of trails;

/** Template, sandbox, for rendering the view. */
Future sandbox(HttpConnect connect) { //#2
  var _t0_, _cs_ = new List<HttpConnect>();
  HttpRequest request = connect.request;
  HttpResponse response = connect.response;
  if (!Rsp.init(connect, "text/html; charset=utf-8"))
    return new Future.value();

  response.write("""<!DOCTYPE html>
<html>
 <head>
     <title>La Boussole - tests</title>
"""); //#2

  return connect.include("/rsp/templates/assetsimports.html").then((_) { //include#6

    response.write("""  </head>
  <body>   
"""); //#7

    var _0 = new StringBuffer(); _cs_.add(connect); //var#10
    connect = new HttpConnect.stringBuffer(connect, _0); response = connect.response;

    response.write("""           <h1>Test</h1>
           
              <button id="btn-search" type="submit" class="btn btn-primary ">Recherche</button>&nbsp;
              <button id="btn-reset"  type="submit" class="btn btn-warning ">Supprime markers</button>
              <button id="btn-gpx"  type="submit" class="btn btn-standard ">Trace gpx</button>
              <button id="btn-view-gpx"  type="submit" class="btn btn-standard ">Voir trace gpx</button>
           
"""); //#11

    connect = _cs_.removeLast(); response = connect.response;

    var _1 = new StringBuffer(); _cs_.add(connect); //var#19
    connect = new HttpConnect.stringBuffer(connect, _1); response = connect.response;

    connect = _cs_.removeLast(); response = connect.response;

    var _2 = new StringBuffer(); _cs_.add(connect); //var#20
    connect = new HttpConnect.stringBuffer(connect, _2); response = connect.response;

    connect = _cs_.removeLast(); response = connect.response;

    var _3 = new StringBuffer(); _cs_.add(connect); //var#21
    connect = new HttpConnect.stringBuffer(connect, _3); response = connect.response;

    response.write("""         <div id="map"  style="height: 500px; width: 500px"></div>
         <script type="text/javascript">

         var map = new GxMap("map","gnst6zrvh2tnhhulo1kovnh1", new GxIconBuilder() ).init();
         
         function onMapChange(e){
           if (!map){
             return ;
           }
           var bounds = map.getBounds();
           //console.log("onMapChange : NW ",bounds.getNorthWest() );
           //console.log("onMapChange : NE ",bounds.getNorthEast() );
           //console.log("onMapChange : SW ",bounds.getSouthWest() );
           //console.log("onMapChange : SE ",bounds.getSouthEast() );
         }
     	 
     	 map.listenToMapChange(onMapChange);
         
         
         </script>
"""); //#22

    connect = _cs_.removeLast(); response = connect.response;

    return Rsp.nnf(spaces(new HttpConnect.chain(connect), nw: _0.toString(), ne: _1.toString(), sw: _2.toString(), se: _3.toString())).then((_) { //include#9

      return Rsp.nnf(sharedWidgets(new HttpConnect.chain(connect), sharedWidgetsId: "sharedWidgets")).then((_) { //include#44

        response.write("""    <script type="application/dart" src="/client/pages/sandbox.dart"></script>
    <script src="/packages/browser/dart.js"></script>
  </body>
</html>
"""); //#45

        return new Future.value();
      }); //end-of-include
    }); //end-of-include
  }); //end-of-include
}
