//Auto-generated by RSP Compiler
//Source: profileWidget.rsp.html
part of trails;

/** Template, profileWidget, for rendering the view. */
Future profileWidget(HttpConnect connect, {profileId}) { //#2
  var _t0_, _cs_ = new List<HttpConnect>();
  HttpRequest request = connect.request;
  HttpResponse response = connect.response;
  if (!Rsp.init(connect, "text/html; charset=utf-8"))
    return new Future.value();

  response.write("""<div class="profile"  id=\""""); //#2

  response.write(Rsp.nnx(profileId)); //#2


  response.write("""-watchpoints" style="position:absolute; top: 0px;  left:0px; " ></div>
<div id=\""""); //#2

  response.write(Rsp.nnx(profileId)); //#3


  response.write("""-cursor"  class="profile" >
  <span id=\""""); //#3

  response.write(Rsp.nnx(profileId)); //#4


  response.write("""-cursor-distance" class="profile" style="position:absolute; top: 0px;  left:0px; text-align: center; color: white;" ></span><br/>
  <span id=\""""); //#4

  response.write(Rsp.nnx(profileId)); //#5


  response.write("""-cursor-elevetion" class="profile" style="position:absolute; top: 18px; left:0px; text-align: center; color: white;" ></span><br/>
  <img id=\""""); //#5

  response.write(Rsp.nnx(profileId)); //#6


  response.write("""-cursor-img" class="profile" style="position:absolute; top: 36px; " />
</div>
<div id=\""""); //#6

  response.write(Rsp.nnx(profileId)); //#8


  response.write(""""  class="gx-no-scroll gx-absolute-position profile" ></div>

<div class=\""""); //#8

  response.write(Rsp.nnx(profileId)); //#10


  response.write("""-watchpoint-template profile" >
  <span class="profile" style="position:absolute; top: 0px;  left:0px; text-align: center; color: #b3b3b3;" ></span>
  <img class="profile" style="position:absolute; top: 36px; " />
</div>



"""); //#10

  return new Future.value();
}
