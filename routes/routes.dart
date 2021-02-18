import 'package:flutter/material.dart';
import 'package:pruebas/main.dart';
import 'package:pruebas/src/pages/details_pages/detail1.dart';
import 'package:pruebas/src/pages/details_pages/detail2.dart';
import 'package:pruebas/src/pages/details_pages/detail3.dart';
import 'package:pruebas/src/pages/details_pages/detail4.dart';
import 'package:pruebas/src/pages/home_page.dart';
import 'package:pruebas/src/pages/iniciar_sesion_page.dart';
//import 'package:pruebas/src/pages/iniciar_sesion_page.dart';
import 'package:pruebas/src/pages/inicio_page.dart';
import 'package:pruebas/src/pages/registrarse_page.dart';




Map <String, WidgetBuilder> getApplicationRoutes(){

  return <String, WidgetBuilder> {
    
    'inicio'  : (BuildContext context ) => InicioPage(),
    'login'  : (BuildContext context ) => LoginScreen(),
    'registro'  : (BuildContext context ) => RegisterPage(),
    'home'  : (BuildContext context ) => HomePage(),
    

  };

}