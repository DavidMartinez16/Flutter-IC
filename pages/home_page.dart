import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:pruebas/src/bloc/provider.dart';
import 'package:pruebas/src/pages/educate.dart';
import 'package:pruebas/src/pages/encuesta.dart';
import 'package:pruebas/src/pages/mas.dart';
import 'package:pruebas/src/pages/principal.dart';
import 'package:pruebas/src/pages/usuario.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 2;

  final EducatePage _educate = EducatePage();
  final MasPage _mas = MasPage();
  final UsuarioPage _usuario = UsuarioPage();
  final EncuestaPage _encuesta = EncuestaPage();
  final PrincipalPage _principal = PrincipalPage();

  Widget _mostrarPage = PrincipalPage();

  Widget _pageChoser(int page){
    switch (page){
      case 0:
      return _mas;
      break;
      case 1:
      return _encuesta;
      break;
      case 2:
      return _principal;
      break;
      case 3:
      return _educate;
      break;
      case 4:
      return _usuario;
      break;
      default:
      return new Container(
        child: Center(
          child: Text('No ha seleccionado una página')
        ),
      );
    }
  }

  GlobalKey _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {


    return Scaffold(
        bottomNavigationBar:CurvedNavigationBar(
          height: 60.0,
          index: pageIndex,
          backgroundColor: Colors.white,
          buttonBackgroundColor: Color(0XFF5036D5),
          color: Color(0XFF5036D5),
          key: _bottomNavigationKey,
          items: <Widget>[
            Icon(Icons.add, size: 33, color: Colors.white),
            Icon(Icons.source_rounded, size: 33, color: Colors.white),
            Icon(Icons.home_filled,size: 33, color: Colors.white),
            Icon(Icons.book_rounded, size: 33, color: Colors.white),
            Icon(Icons.account_circle, size: 33, color: Colors.white),
          ],
          onTap: (int tappedIndex) {
            setState(() {

              _mostrarPage = _pageChoser(tappedIndex);

            });
          },
        ),
        body: Center(
          child: _mostrarPage,
        )
    );
  }

}