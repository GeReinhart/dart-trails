//Auto-generated by RSP Compiler
//Source: index.rsp.html
part of trails;

/** Template, index, for rendering the view. */
Future index(HttpConnect connect) { //#2
  var _t0_, _cs_ = new List<HttpConnect>();
  HttpRequest request = connect.request;
  HttpResponse response = connect.response;
  Rsp.init(connect, "text/html; charset=utf-8");

  response.write("""<!DOCTYPE html>
<html>
 <head>
     <title>La Boussole</title>
"""); //#2

  return connect.include("/rsp/templates/assetsimports.html").then((_) { //include#6

    response.write("""  </head>
  <body>   
"""); //#7

    var _0 = new StringBuffer(); _cs_.add(connect); //var#10
    connect = new HttpConnect.stringBuffer(connect, _0); response = connect.response;

    response.write("""        
        <div class="form-group">
           <button  type="submit" class="btn btn-default btn-login">Se connecter</button>
           <button  type="submit" class="btn btn-default btn-register">S'enregister</button>
           <div class="text-warning  form-error-message" >Cette application est actuellement en construction.</div>
        </div>
        
"""); //#11

    connect = _cs_.removeLast(); response = connect.response;

    var _1 = new StringBuffer(); _cs_.add(connect); //var#19
    connect = new HttpConnect.stringBuffer(connect, _1); response = connect.response;

    connect = _cs_.removeLast(); response = connect.response;

    var _2 = new StringBuffer(); _cs_.add(connect); //var#20
    connect = new HttpConnect.stringBuffer(connect, _2); response = connect.response;

    response.write("""        <div class="main-welcome"   >
           <div>
            <h1>La boussole</h1>
            <h2>Partager vos traces GPS</h2>
            <p>Que ce soit pour aller marcher en famille, randonner en montagne ou courir dans les bois c&apos;est toujours plus confortable de suivre notre gps. 
            Le but de <em>la-boussole</em> est de vous proposer une manière innovante de partager et de rechercher la trace GPS qu'il vous faut.</p>
            <p>
            <p>Comme dans la vraie vie, vous pouvez utiliser la boussole de cette application pour naviguer dans le site mais également pour agrandir la partie de la page qui vous intéresse en déplaçant celle-ci. Essayez !</p>
            <p>
          </div>
        </div>      
"""); //#21

    connect = _cs_.removeLast(); response = connect.response;

    var _3 = new StringBuffer(); _cs_.add(connect); //var#33
    connect = new HttpConnect.stringBuffer(connect, _3); response = connect.response;

    response.write("""       
"""); //#34

    connect = _cs_.removeLast(); response = connect.response;

    return Rsp.nnf(spaces(new HttpConnect.chain(connect), nw: _0.toString(), ne: _1.toString(), sw: _2.toString(), se: _3.toString())).then((_) { //include#9

      response.write("""    <script type="application/dart" src="client/index.dart"></script>
    <script src="packages/browser/dart.js"></script>
  </body>
</html>"""); //#37

      return Rsp.nnf();
    }); //end-of-include
  }); //end-of-include
}
