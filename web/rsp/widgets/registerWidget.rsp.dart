//Auto-generated by RSP Compiler
//Source: registerWidget.rsp.html
part of trails;

/** Template, registerWidget, for rendering the view. */
Future registerWidget(HttpConnect connect, {registerId}) { //#2
  var _t0_, _cs_ = new List<HttpConnect>();
  HttpRequest request = connect.request;
  HttpResponse response = connect.response;
  if (!Rsp.init(connect, "text/html; charset=utf-8"))
    return new Future.value();

  response.write("""

    <div id=\""""); //#2

  response.write(Rsp.nnx(registerId)); //#3


  response.write("""" class="modal fade" tabindex="-1" role="dialog" style="z-index: 0">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <h3>Enregistrement</h3>
          </div>
          <div class="modal-body">
              <div class="form-group form-login">
                <input  id=\""""); //#3

  response.write(Rsp.nnx(registerId)); //#11


  response.write("""-login" type="text" class="form-control"  placeholder="Login">
              </div>
              <div class="form-group form-password">
                <input id=\""""); //#11

  response.write(Rsp.nnx(registerId)); //#14


  response.write("""-password"  type="password" class="form-control"  placeholder="Mot de passe">
              </div>        
              <div class="form-group form-passwordConfirm">
                <input id=\""""); //#14

  response.write(Rsp.nnx(registerId)); //#17


  response.write("""-password-confirm" type="password" class="form-control"  placeholder="Confirmation mot de passe">
              </div>     
          </div>
          <div class="modal-footer">
              <div id=\""""); //#17

  response.write(Rsp.nnx(registerId)); //#21


  response.write("""-error-message" class="text-warning" style="text-align: left;" ></div>
              <button id=\""""); //#21

  response.write(Rsp.nnx(registerId)); //#22


  response.write("""-btn-submit" type="submit" class="btn btn-primary btn-submit-register">S'enregister</button>
              <button id=\""""); //#22

  response.write(Rsp.nnx(registerId)); //#23


  response.write("""-btn-cancel" class="btn btn-default">Annuler</button>
          </div>
        </div>
      </div>
    </div>         
"""); //#23

  return new Future.value();
}
