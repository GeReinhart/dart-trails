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

  
  test('Trace key encoding', () {
    Map traceAsJson = {'creator': "gex", 'title': "La Franche Verte d'Échirolles - Le tour classique"  };
    Trace trace = new Trace.fromJson(traceAsJson);
    expect(trace.buildKey(), equals("gex/la_franche_verte_d_echirolles_-_le_tour_classique")); 

    traceAsJson = {'creator': "gex", 'title': "L'échelle"  };
    trace = new Trace.fromJson(traceAsJson);
    expect(trace.buildKey(), equals("gex/l_echelle")); 

    traceAsJson = {'creator': "géRald", 'title': "àèìòùáéíóúýâêîôûãñõäëïöüÿ&£@"  };
    trace = new Trace.fromJson(traceAsJson);
    expect(trace.buildKey(), equals("gerald/aeiouaeiouyaeiouanoaeiouy___")); 

  });


  

  
}