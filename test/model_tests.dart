import 'package:unittest/unittest.dart';
import '../lib/models.dart';

main() {
  


  test('User JSON serialization & deserialization', () {
    User u = new User("Gex", "lakdsjgghkldsjag", "Gérald", "Reinhart");
    Map m = u.toJson();
    User u2 = new User.fromJson(m);  
    expect(u2.login, equals(u.login));    
    expect(u2.encryptedPassword, equals(u.encryptedPassword));    
    expect(u2.firstName, equals(u.firstName));    
    expect(u2.lastName, equals(u.lastName));    
  });

  
  test('Trace key', () {
    Map traceAsJson = {'creator': "gex", 'title': "Tour du Vercors - Autrans - Saint Nizier du Moucherotte"  };
    Trace trace = new Trace.fromJson(traceAsJson);
    expect(trace.buildKey(), equals("gex/tour_du_vercors___autrans___saint_nizier_du_moucherotte")); 
  });

  test('Trace key url encode', () {
    Map traceAsJson = {'creator': "gex", 'title': "L'échelle"  };
    Trace trace = new Trace.fromJson(traceAsJson);
    expect(trace.buildKey(), equals("gex/l_echelle")); 
  });
  

  
}