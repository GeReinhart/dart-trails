//Auto-generated by RSP Compiler
//Source: indexTextFragment.rsp.html
part of trails;

/** Template, indexTextFragment, for rendering the view. */
Future indexTextFragment(HttpConnect connect) { //#2
  var _t0_, _cs_ = new List<HttpConnect>();
  HttpRequest request = connect.request;
  HttpResponse response = connect.response;
  if (!Rsp.init(connect, "text/html; charset=utf-8"))
    return new Future.value();

  response.write("""        <div class="main-welcome"   >
           <div>
            <h2>Partager vos traces GPS</h2>
            <p>Que ce soit pour aller marcher en famille, randonner en montagne ou courir dans les bois c&apos;est toujours plus confortable de suivre notre gps. 
            Le but de <em>la-boussole</em> est de vous proposer une manière innovante de partager et de rechercher la trace GPS qu'il vous faut.</p>
            <p>
            <p>Comme dans la vraie vie, vous pouvez utiliser la boussole de cette application pour naviguer dans le site mais également pour agrandir la partie de la page qui vous intéresse en déplaçant celle-ci. Essayez !</p>
            <p>
          </div>
        </div>  """); //#2

  return new Future.value();
}
