//Auto-generated by RSP Compiler
//Source: about.rsp.html
part of trails;

/** Template, about, for rendering the view. */
Future about(HttpConnect connect) { //#2
  var _t0_, _cs_ = new List<HttpConnect>();
  HttpRequest request = connect.request;
  HttpResponse response = connect.response;
  if (!Rsp.init(connect, "text/html; charset=utf-8"))
    return new Future.value();

  response.write("""<!DOCTYPE html>
<html>
 <head>
     <title>A propos de la-boussole</title>
"""); //#2

  return connect.include("/rsp/templates/assetsimports.html").then((_) { //include#6

    response.write("""  </head>
  <body>   
"""); //#7

    var _0 = new StringBuffer(); _cs_.add(connect); //var#10
    connect = new HttpConnect.stringBuffer(connect, _0); response = connect.response;

    response.write("""           <h1>A propos de la-boussole</h1>
           <div class="text-warning  form-error-message" >Cette application est actuellement en construction.</div>
        
           <h2>Le propos</h2>
           
           <p>Cette application a pour but de partager des traces gps. Au delà de cette vue technique, elle permet 
           aux utilisateurs de faire découvrir des sentiers en forêt, un parcours idéal pour un entrainement de 
           running, une sortie facile et dépaysante en ski de randonnées ou bien simplement un joli coin de nature
            inconnu.</p>

<p>Innovante :</p>
       <ul>
         <li>la navigation par la boussole centrale permet à l'utilisateur de se focaliser sur ce qui l'intéresse : par exemple il peut afficher en plein écran la carte IGN de la trace gps.</li> 
         <li>proposer une boucle d'amélioration continue de l'application au utilisateur en intégrant un outil permettant d'effectuer des propositions ou de lever un bug.</li>
         <li>la technologie utilisée est en avance de phase : Dart 1.0 date de novembre 2013.</li>
       </ul>
<p>L'interface se veut sobre et efficace : présenter uniquement les informations nécessaires pour ne pas polluer
 les utilisateurs de détails superflus ou de publicités.</p>

<p>Enfin, l’intégralité du code fournissant cette application est ouvert et disponible sur <a href="https://github.com/GeReinhart/app-share-gps-trace"  target="_blank" >GitHub</a>.</p>
           
           
"""); //#11

    connect = _cs_.removeLast(); response = connect.response;

    var _1 = new StringBuffer(); _cs_.add(connect); //var#34
    connect = new HttpConnect.stringBuffer(connect, _1); response = connect.response;

    response.write("""           <h2>Derriere la scène</h2>
           <div class="text-warning  form-error-message" >En construction : texte présentant les enjeux techniques de construction et d'évolution de l'application.</div>
            
"""); //#35

    connect = _cs_.removeLast(); response = connect.response;

    var _2 = new StringBuffer(); _cs_.add(connect); //var#39
    connect = new HttpConnect.stringBuffer(connect, _2); response = connect.response;

    response.write("""           <h2>Retour</h2>
           <div class="text-warning  form-error-message" >En construction : permettre aux utilisateurs de remonter des bugs ou de proposer des améliorations.</div>

            
"""); //#40

    connect = _cs_.removeLast(); response = connect.response;

    var _3 = new StringBuffer(); _cs_.add(connect); //var#45
    connect = new HttpConnect.stringBuffer(connect, _3); response = connect.response;

    response.write("""           <h2>Auteur</h2>
           
           <p>Grenoble est le paradis du randonneur de moyenne montagne et du ski de randonnée. J'ai pris le virus : aller me balader
            en Charteuse, Vercors ou Belledonne est toujours un vrai plaisir, un vrai dépaysement. L'hiver, comme tout Grenoblois, j'attends 
            avec impatience les premiers flocons pour sortir les peaux de phoques et aller faire les premières conversions. Plus 
            récemment je me suis mis au trail, ma participation à l'UT4M en relais cette année m'a vraiment donné envie de découvrir
             nos montagnes en courant. Enfin, au cours de mes différents voyages j'ai également eu l'occasion de faire de merveilleux
              treks en Alaska, Yukon, Guatémala, La Réunion ou encore en Bolivie.</p>

          <p>Dans toutes ces activités, un outil indispensable est bien entendu la boussole, ou bien sûr sa version moderne qu'est le gps.</p>
 
          <p>Côté vie professionnelle, je suis ingénieur de développement logiciel depuis 2001. Pendant tout ce temps passé à développer 
            des outils pour les autres, je me disais que ce serait bien, un jour, de prendre du temps pour développer une application web 
            de A à Z avec comme seules contraintes celles que je me poserais. Passionné de nouvelles technologies, je récemment découvert
             un langage émergeant accompagné de son environnement de développement pour le web : <a href="https://www.dartlang.org/" target="_blank" >Dart</a> porté par Google.</p>

   <p>Tous les éléments ont donc été réunis pour que je me lance :</p>
       <ul>
         <li>le quoi : une bonne idée de projet : une application web de partage de données gps.</li>
         <li>le comment : la plateforme <a href="https://www.dartlang.org/" target="_blank" >Dart</a> ainsi que de nombreux services disponibles sur le web facilitant le développement, l'intégration continue et l'exploitation en production (<a href="https://github.com/GeReinhart/app-share-gps-trace" target="_blank" >GitHub</a>, <a href="https://trello.com/b/OsBs3WpR/la-boussole-backlog" target="_blank" >Trello</a>, <a href="https://drone.io/github.com/GeReinhart/app-share-gps-trace" target="_blank" >Drone</a>, <a href="https://www.heroku.com/" target="_blank" >Heroku</a>, <a href="https://www.mongolab.com" target="_blank" >MongoLab</a>).</li>
         <li>le pourquoi : me prouver que j'en suis capable tout simplement, me constituer une formidable carte visite et enfin et surtout créer application utile.</li>
       </ul>
   
   <p>Le 18/12/2013,             Gérald Reinhart </p>

   <p><a href="http://www.linkedin.com/pub/gerald-reinhart/15/a30/10" target="_blank" >Profil LinkedIn</a></p>
   <p>Mail : gerald <span style="font-style: italic; " >dot</span> reinhart <span style="font-style: italic; " >at</span> gmail <span style="font-style: italic; " >dot</span> com</p>
   <p>&nbsp;</p>
   <p>&nbsp;</p>    
"""); //#46

    connect = _cs_.removeLast(); response = connect.response;

    return Rsp.nnf(spaces(new HttpConnect.chain(connect), nw: _0.toString(), ne: _1.toString(), sw: _2.toString(), se: _3.toString())).then((_) { //include#9

      response.write("""    
    
    
    <script type="application/dart" src="/client/pages/about.dart"></script>
    <script src="/packages/browser/dart.js"></script>
  </body>
</html>"""); //#77

      return new Future.value();
    }); //end-of-include
  }); //end-of-include
}
