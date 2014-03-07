//Auto-generated by RSP Compiler
//Source: traceDisplayTextFragment.rsp.html
part of trails;

/** Template, traceDisplayTextFragment, for rendering the view. */
Future traceDisplayTextFragment(HttpConnect connect) { //#2
  var _t0_, _cs_ = new List<HttpConnect>();
  HttpRequest request = connect.request;
  HttpResponse response = connect.response;
  if (!Rsp.init(connect, "text/html; charset=utf-8"))
    return new Future.value();

  response.write("""               <div class="trace-details-activities trace-activities important-text" >
                 ####traceRenderer.activities####
               </div>
                         
               <div class="trace-details-description" >
                 ####traceRenderer.description, encode: 'none'####
               </div>
               <div class="note-text" >
                 <a rel="license" target="_blank" href="http://creativecommons.org/licenses/by-nc-nd/3.0/fr/">
                     <img alt="Licence Creative Commons" style="border-width:0" src="http://i.creativecommons.org/l/by-nc-nd/3.0/fr/88x31.png" />
                 </a>
                 &nbsp;
                 trace ajoutée par <span class="trace-details-creator note-text" >####traceRenderer.trace.creator####</span>
               </div>
               <div class="note-text" >
                 mise à jour le <span class="trace-details-lastupdate" >####traceRenderer.lastUpdateDate####</span>
               </div>
"""); //#2

  return new Future.value();
}
