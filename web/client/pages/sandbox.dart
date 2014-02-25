import "dart:html";
import "dart:convert";
import "dart:async" ;
import 'package:js/js.dart' as js;

import '../spaces.dart';
import "../forms.dart";

import 'page.dart';
import "../widgets/login.dart" ;
import "../widgets/persistentMenu.dart" ;
import "../events.dart" ;
import "../controllers.dart" ;

class SandboxPage extends Page {
  
  SandboxPage(PageContext context): super("sandbox",context,80,20,false){
    layout.centerMoved.listen((_){
      moveTraceViewers( _ as SpacesPositions);
    });
  }

  void showPage( PageParameters pageParameters) {
    
    querySelectorAll("#btn-search").onClick.listen((e) {
      submitRequest();
    });
    querySelectorAll("#btn-reset").onClick.listen((e) {
      js.context.getMap().removeAllMarkers();
    }); 
    querySelectorAll("#btn-gpx").onClick.listen((e) {
      js.context.getMap().displayGpxByKey("user1_jhjhg");
    }); 
    querySelectorAll("#btn-view-gpx").onClick.listen((e) {
      js.context.getMap().viewGpxByKey("user3_gasdgasdgasdgds");
    });    
    
    
    organizeSpaces();
    submitRequest();
  }
  
  void submitRequest(){
    HttpRequest request = new HttpRequest();
  
    layout.startLoading();
    request.onReadyStateChange.listen((_) {
      if (request.readyState == HttpRequest.DONE ) {
        displaySearchResults(request);
      }
    });
    sendSearchRequest(request);
  }
  
  void sendSearchRequest(HttpRequest request, {mapFilter:true}){
    request.open("POST",  "/j_trace_search", async: true);
    SearchForm form = new SearchForm();
    request.send(JSON.encode(form.toJson()));
  }
  
  void displaySearchResults(HttpRequest request){
    if (request.responseText == null || request.responseText != null  && request.responseText.isEmpty){
      layout.stopLoading();
      return ;   
    }
    
    SearchForm form = new SearchForm.fromMap(JSON.decode(request.responseText));
    
    Element searchResultRow=  querySelector("#search-result-row");
    Element searchResultBody=  querySelector("#search-result-body");
    js.context.getMap().removeAllMarkers();
    if (form.results != null && form.results.isNotEmpty){
        form.results.forEach((lightTrace){
          String gpxUrl = "/trace.gpx/${lightTrace.key}";   
          js.context.getMap().addMarkerToMap( lightTrace.keyJsSafe, lightTrace.activities , lightTrace.titleJsSafe, lightTrace.startPointLatitude,lightTrace.startPointLongitude,gpxUrl );
        });
        js.context.getMap().fitMapViewPortWithMarkers();
    }
    layout.stopLoading();
  }
  
  void moveTraceViewers(SpacesPositions spacesPositions ){
    
    Element map = querySelector("#map") ;
    if (map != null){
     
      map..style.position = 'absolute'
      ..style.right  = "0px"
      ..style.top    = "0px"
      ..style.width  = (spacesPositions.spaceSE_Width).toString() + "px"
      ..style.height = (spacesPositions.spaceSE_Height).toString() + "px" ;
    }
    
    
  }
  
}


void main() {
  SandboxPage page = new SandboxPage(new PageContext() );
  page.showPage();
}
