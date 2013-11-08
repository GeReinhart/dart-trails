

import 'dart:html';
import 'dart:async';
//import 'package:bootjack/bootjack.dart';


class SpacesLayout{
  
  String spaces = ".spaces" ;
  String spaceElements  = ".space"  ;
  String spaceNW  = ".space-north-west";
  String spaceNE  = ".space-north-east";
  String spaceSW  = ".space-south-west";
  String spaceSE  = ".space-south-east" ;
  String spaceCenter = ".space-center"  ;
  String spaceMenu = ".space-menu";
  String spaceLoading = ".space-loading";
  
  int centerRightPercentPosition ;
  int centerTopPercentPosition;
  int centerSize ;

  double centerRight ;
  double centerTop ;
  
  SpacesPositions postions ;
  
  MouseEvent _startMovingCenterPosition ;
  var _movingCenter = false;
  
  StreamController centerMovedController = new StreamController.broadcast();
  
  SpacesLayout(this.centerSize, this.centerRightPercentPosition,  this.centerTopPercentPosition){
    
    centerRight = (window.innerWidth * centerRightPercentPosition / 100).toDouble() ;
    centerTop = (window.innerHeight * centerTopPercentPosition / 100).toDouble() ;
    _init();
  }
  
  Stream get centerMoved => centerMovedController.stream;
  
  void _init(){
   // To be put back when bootjack is stable 
   // Dropdown.use();
    
    organizeSpaces();
    
    window.onLoad.listen(updateSpaces);
    window.onResize.listen(updateSpaces);

    querySelector(spaceCenter).onMouseDown.listen((mouseEvent) {
      _startMovingCenterPosition = mouseEvent ;
      _movingCenter = true ;
      _toggleMenu();
      querySelector(spaceCenter + " a img").attributes["src"] = "assets/img/compass_275_red.png";
    });

    querySelector(spaceCenter).onMouseLeave.listen((mouseEvent) {
      if (_movingCenter){
        _movingCenter = false;
        _moveCenter( _startMovingCenterPosition.client, mouseEvent.client);
      }
    });

    querySelector(spaceCenter).onMouseUp.listen((mouseEvent) {
      if (_movingCenter){
        _movingCenter = false;
        _moveCenter( _startMovingCenterPosition.client, mouseEvent.client);
      }
    });

    window.onMouseOver.listen((mouseEvent) {
      if (_movingCenter){
        _movingCenter = false;
        _moveCenter( _startMovingCenterPosition.client, mouseEvent.client);
      }
    });
    
    window.onMouseUp.listen((mouseEvent) {
      if (_movingCenter){
        _movingCenter = false;
        _moveCenter( _startMovingCenterPosition.client, mouseEvent.client);
      }
    });

  }
  
  void _toggleMenu(){
    var menu = querySelector(spaceMenu);
    if ( menu.style.zIndex == "99" ){
      menu.style.zIndex = "102" ;
      menu.classes.add("open") ;
    }else{
      menu.style.zIndex = "99" ;
      menu.classes.remove("open") ;
    }
  }
  
  
  void _moveCenter(Point start, Point end){
    double centerRightComputed =   -end.x + start.x  + centerRight ;
    double centerTopComputed   =  end.y - start.y  + centerTop ;  ;
    
    if (centerRightComputed < centerSize /2 ){
      centerRight = (centerSize/2).toDouble() ;
    }else{
      centerRight = centerRightComputed;
    }
    if ( centerTopComputed >  window.innerHeight - centerSize /2  ){
      centerTop = (window.innerHeight - centerSize /2).toDouble()  ;       
    }else{
      centerTop = centerTopComputed ;
    }
    organizeSpaces();
  }
  
  void updateSpaces(Event event){
    organizeSpaces();
  }
  
  void organizeSpaces(){

    postions = new SpacesPositions();
    postions.spaceNW_Right = centerRight+1 ;
    postions.spaceNW_Top = 0.0 ;
    postions.spaceNW_Width = window.innerWidth - centerRight-1 ;
    postions.spaceNW_Height = centerTop ;
    
    querySelector(spaceNW) 
    ..style.position = 'absolute'
    ..style.right  = (postions.spaceNW_Right).toString() + "px" 
    ..style.top    = (postions.spaceNW_Top).toString() + "px" 
    ..style.width  = (postions.spaceNW_Width).toString() + "px"
    ..style.height = (postions.spaceNW_Height).toString() + "px" ;

    postions.spaceNE_Right = 0.0 ;
    postions.spaceNE_Top = 0.0 ;
    postions.spaceNE_Width = centerRight ;
    postions.spaceNE_Height = centerTop ;    
    
    querySelector(spaceNE)
    ..style.position = 'absolute'
    ..style.right  = (postions.spaceNE_Right).toString() + "px" 
    ..style.top    = (postions.spaceNE_Top).toString() + "px" 
    ..style.width  = (postions.spaceNE_Width).toString() + "px"
    ..style.height = (postions.spaceNE_Height).toString() + "px" ;

    postions.spaceSW_Right = centerRight+1 ;
    postions.spaceSW_Top = centerTop+1 ;
    postions.spaceSW_Width = window.innerWidth - centerRight-1 ;
    postions.spaceSW_Height = window.innerHeight - centerTop-1  ;       
    
    querySelector(spaceSW)
    ..style.position = 'absolute'
    ..style.right  = (postions.spaceSW_Right).toString() + "px" 
    ..style.top    = (postions.spaceSW_Top).toString() + "px" 
    ..style.width  = (postions.spaceSW_Width).toString() + "px"
    ..style.height = (postions.spaceSW_Height).toString() + "px" ;  
    
    postions.spaceSE_Right = 0.0 ;
    postions.spaceSE_Top = centerTop+1 ;
    postions.spaceSE_Width = centerRight ;
    postions.spaceSE_Height = window.innerHeight - centerTop-1  ;    
    
    querySelector(spaceSE)
    ..style.position = 'absolute'
    ..style.right  = (postions.spaceSE_Right).toString() + "px" 
    ..style.top    = (postions.spaceSE_Top).toString() + "px" 
    ..style.width  = (postions.spaceSE_Width).toString() + "px"
    ..style.height = (postions.spaceSE_Height).toString() + "px" ;   
    
    querySelector(spaceCenter)
    ..style.position = 'absolute'
    ..style.right = (centerRight  - centerSize /2 +2   ).toString() + "px"
    ..style.top = (centerTop    - centerSize /2      ).toString()+ "px"
    ..style.width = centerSize.toString()+ "px"
    ..style.height = centerSize.toString()+ "px" ;  
    querySelector(spaceCenter + " a img").attributes["src"] = "assets/img/compass_275.png";

    querySelector(spaceLoading)
    ..style.position = 'absolute'
    ..style.right = (centerRight  - centerSize /2 +2   ).toString() + "px"
    ..style.top = (centerTop    - centerSize /2      ).toString()+ "px"
    ..style.width = centerSize.toString()+ "px"
    ..style.height = centerSize.toString()+ "px" ;  
    
    
    querySelector(spaceMenu)
    ..style.position = 'absolute'
    ..style.right = (centerRight  - centerSize /2 +2   ).toString() + "px"
    ..style.top =  centerTop < window.innerHeight/2  ? (centerTop+1  + centerSize /6 ).toString()+ "px" : (centerTop+1  - centerSize *8/6 ).toString()+ "px"
    ..style.width = centerSize.toString()+ "px"
    ..style.height = "0px" ;   
    
    
    centerMovedController.add(postions);
  }
  
  void startLoading(){
    querySelector(spaceLoading).style.zIndex = "200" ;
  }
  
  void stopLoading(){
    querySelector(spaceLoading).style.zIndex = "10" ;
  }
}

class SpacesPositions{
  double centerRight ;
  double centerTop ;
  
  int windowWidth = window.innerWidth;
  int windowHeight = window.innerHeight;
  
  double spaceNW_Right ;
  double spaceNW_Top ;
  double spaceNW_Width ;
  double spaceNW_Height ;

  double spaceNE_Right ;
  double spaceNE_Top ;
  double spaceNE_Width ;
  double spaceNE_Height ;

  double spaceSW_Right ;
  double spaceSW_Top ;
  double spaceSW_Width ;
  double spaceSW_Height ;  
  
  double spaceSE_Right ;
  double spaceSE_Top ;
  double spaceSE_Width ;
  double spaceSE_Height ;
}



