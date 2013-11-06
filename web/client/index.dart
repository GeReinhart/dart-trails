import 'spaces.dart';
import "dart:html";

void main() {
  SpacesLayout layout = new SpacesLayout(180,70,15);
  
  querySelector(".btn-login").onClick.listen((e) {
    window.location.href = "/login";
  });
  
  querySelector(".btn-register").onClick.listen((e) {
    window.location.href = "/register";
  });
}

