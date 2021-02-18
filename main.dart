import 'package:flutter/material.dart';
import 'package:pruebas/src/bloc/provider.dart';

//import 'package:pruebas/src/pages/iniciar_sesion_page.dart';
import 'package:pruebas/src/pages/inicio_page.dart';
import 'package:pruebas/src/preferencias_usuario/preferencias_usuario.dart';
import 'package:pruebas/src/routes/routes.dart';

 
void main() async {
  
  WidgetsFlutterBinding.ensureInitialized();


  final prefs = new PreferenciasUsuario();
  await prefs.initPrefs();


  runApp(MyApp());
} 
 
class MyApp extends StatelessWidget {

  final prefs = new PreferenciasUsuario();
  //print(prefs.token);

  @override
  Widget build(BuildContext context) {

    final prefs = new PreferenciasUsuario();
    print(prefs.token);

    return Provider(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Prueba 1',
        initialRoute: verificarLog(),
        routes: getApplicationRoutes(),
        onGenerateRoute: ( settings ) {
          return MaterialPageRoute(
            builder: ( BuildContext context ) => InicioPage()
          );
        },
      )
    );
}

String verificarLog() {

  final prefs = new PreferenciasUsuario();

  if (prefs.token == ''){
    return 'inicio';
  } else {
    return 'home';
  }

}

}