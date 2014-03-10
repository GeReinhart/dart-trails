//Auto-generated by RSP Compiler
//Source: headerWidget.rsp.html
part of trails;

/** Template, headerWidget, for rendering the view. */
Future headerWidget(HttpConnect connect, {headerId}) { //#2
  var _t0_, _cs_ = new List<HttpConnect>();
  HttpRequest request = connect.request;
  HttpResponse response = connect.response;
  if (!Rsp.init(connect, "text/html; charset=utf-8"))
    return new Future.value();

  response.write("""<div id=\""""); //#2

  response.write(Rsp.nnx(headerId)); //#2


  response.write(""""   >
   <h1 id=\""""); //#2

  response.write(Rsp.nnx(headerId)); //#3


  response.write("""-title"  ></h1>
"""); //#3

  return Rsp.nnf(connectedUserWidget(new HttpConnect.chain(connect))).then((_) { //include#4

    response.write("""   <div id=\""""); //#5

    response.write(Rsp.nnx(headerId)); //#5


    response.write("""-right">
     <span id=\""""); //#5

    response.write(Rsp.nnx(headerId)); //#6


    response.write("""-user"  >"""); //#6

    if (currentUser(request.session) != null  &&  currentUser(request.session).admin) { //if#6

      response.write("""admin&nbsp;"""); //#6
    } //if

    response.write(Rsp.nnx(currentUser(request.session) != null ?  currentUser(request.session).login: "")); //#6


    response.write("""</span>

     <span id=\""""); //#6

    response.write(Rsp.nnx(headerId)); //#8


    response.write("""-register" class='gx-as-link """); //#8

    response.write(Rsp.nnx(currentUser(request.session) != null ? "gx-hidden" : "")); //#8


    response.write("""' >
        <a title="S'enregister" ><img id=\""""); //#8

    response.write(Rsp.nnx(headerId)); //#9


    response.write("""-register-img" alt="S'enregister" src='/assets/img/register.png '  /></a>
     </span>     
     <span id=\""""); //#9

    response.write(Rsp.nnx(headerId)); //#11


    response.write("""-login" class='gx-as-link """); //#11

    response.write(Rsp.nnx(currentUser(request.session) != null ? "gx-hidden" : "")); //#11


    response.write("""' >
        <a title="Se connecter" ><img id=\""""); //#11

    response.write(Rsp.nnx(headerId)); //#12


    response.write("""-login-img" src='/assets/img/login.png '  /></a>
     </span>
     <span id=\""""); //#12

    response.write(Rsp.nnx(headerId)); //#14


    response.write("""-logout" class='gx-as-link """); //#14

    response.write(Rsp.nnx(currentUser(request.session) == null ? "gx-hidden" : "")); //#14


    response.write("""' >
        <a title="Se déconnecter" ><img id=\""""); //#14

    response.write(Rsp.nnx(headerId)); //#15


    response.write("""-logout-img" src='/assets/img/logout.png '  /></a>
     </span>
     <span id=\""""); //#15

    response.write(Rsp.nnx(headerId)); //#17


    response.write("""-menu" class='gx-as-link' >
        <a><img id=\""""); //#17

    response.write(Rsp.nnx(headerId)); //#18


    response.write("""-menu-img" src='/assets/img/menu.png '  /></a>
     </span>        
   </div>
   
</div>
"""); //#18

    return new Future.value();
  }); //end-of-include
}