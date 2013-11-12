
import "../../lib/trace.dart" ;

class TraceAnalysisRenderer {
  
  TraceAnalysis _traceAnalysis ;
  
  TraceAnalysisRenderer(this._traceAnalysis);
  
  List<TracePointRenderer> get points {
    List<TracePointRenderer> tracePointRenderers = new List<TracePointRenderer>();
    for(TracePoint tracePoint in   _traceAnalysis.points ){
      tracePointRenderers.add(   new TracePointRenderer(tracePoint)) ;
    }
    return tracePointRenderers ;
  }
 
  String get gpxUrl => _traceAnalysis.gpxUrl ;

  TracePoint get startPoint => _traceAnalysis.startPoint ;
  
  int get skyElevetionInMeters => _traceAnalysis.upperPoint.elevetion.round() + 500 ;

  String get lengthToRender => (_traceAnalysis.length/1000).truncate().toString()
                              + " km " 
                              + ( _traceAnalysis.length- (_traceAnalysis.length/1000).truncate()*1000) .toString() 
                              + " m" ;
  
  num get up => _traceAnalysis.up ;
  
  num get inclinationUp => _traceAnalysis.inclinationUp ;
  
  int get difficulty => _traceAnalysis.difficulty ;
  
  double get traceHeightWidthRatio => _traceAnalysis.upperPoint.elevetion / _traceAnalysis.length ;
  
}

class TracePointRenderer {
  
  static const int MEADOW_ELEVETION = 450 ;
  static const int LEAFY_ELEVETION = 1000 ;
  static const int THORNY_ELEVETION = 1500 ;
  static const int SCATTERED_ELEVETION = 2000 ;
  
  TracePoint _tracePoint ;
  
  TracePointRenderer(this._tracePoint);
  
  int get distanceInMeters => _tracePoint.distance.round();
  
  int get elevetionInMeters => _tracePoint.elevetion.round();
  
  int get meadowInMeters => elevetionInMeters > MEADOW_ELEVETION ? MEADOW_ELEVETION - 1 : elevetionInMeters  - 1   ;

  int get leafyInMeters => elevetionInMeters > LEAFY_ELEVETION ? LEAFY_ELEVETION - 1 : elevetionInMeters  - 1   ;

  int get thornyInMeters => elevetionInMeters > THORNY_ELEVETION ? THORNY_ELEVETION - 1 : elevetionInMeters  - 1   ;

  int get scatteredInMeters => elevetionInMeters > SCATTERED_ELEVETION ? SCATTERED_ELEVETION - 1 : elevetionInMeters  - 1   ;

  int getSnowInMeters(skyElevetionInMeters) => elevetionInMeters > skyElevetionInMeters ? skyElevetionInMeters - 1 : elevetionInMeters  - 1   ;
   
}