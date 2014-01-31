//Auto-generated by RSP Compiler
//Source: loginWidget.rsp.html
part of trails;

/** Template, loginWidget, for rendering the view. */
Future loginWidget(HttpConnect connect, {loginId}) { //#2
  var _t0_, _cs_ = new List<HttpConnect>();
  HttpRequest request = connect.request;
  HttpResponse response = connect.response;
  if (!Rsp.init(connect, "text/html; charset=utf-8"))
    return new Future.value();

  response.write("""



    <div id=\""""); //#2

  response.write(Rsp.nnx(confirmId)); //#5


  response.write("""" class="modal fade" tabindex="-1" role="dialog">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <h3>Connection</h3>
          </div>
          <div class="modal-body">
"""); //#5

  if (request.uri.queryParameters["retry"] != null) { //if#12

    response.write("""              <div class="text-warning">Mauvais login ou mot de passe.</div>
"""); //#13
  } //if

  response.write("""              <form role="form"  action="/s_login" method="post" accept-charset="UTF-8">
                <div class="form-group">
                  <input name="s_username" type="text" class="form-control" id="login" placeholder="Login">
                </div>
                <div class="form-group">
                  <input name="s_password" type="password" class="form-control" id="password" placeholder="Mot de passe">
                </div>        
                <button type="submit" class="btn btn-primary loading-on-click">Se connecter</button>
              </form>
          </div>
          <div class="modal-footer">
            <button id=\""""); //#15

  response.write(Rsp.nnx(confirmId)); //#26


  response.write("""-btn-ok" class="btn btn-primary">OK</button>
            <button id=\""""); //#26

  response.write(Rsp.nnx(confirmId)); //#27


  response.write("""-btn-cancel" class="btn btn-default">Annuler</button>
          </div>
        </div>
      </div>
    </div>         
"""); //#27

  return new Future.value();
}
