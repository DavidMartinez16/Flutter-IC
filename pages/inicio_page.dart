import 'package:flutter/material.dart';


class InicioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final circulo = Container(
      width: 120.0,
      height: 120.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100.0),
        color: Color.fromRGBO(53, 3, 91, 0.08)
      ),
  );

  final circulo2 = Container(
      width: 150.0,
      height: 150.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100.0),
        color: Color.fromRGBO(255, 255, 0, 0.08),
      ),
  );

    return Stack(
      children: [
        _crearContainer(context),
        _crearEfecto(),
        Positioned( bottom: -50.0, left: -20.0, child: circulo ),
        Positioned( bottom: 50.0, right: -95.0, child: circulo2 ),
        Positioned( top: 350.0, left: -10.0, child: circulo2 ),
        Positioned( top: 480.0, right: 65.0, child: circulo ),
        Positioned( top: 200.0, right: -20.0, child: circulo ),
        
      ],
    );
    
  }

  Widget _crearEfecto() {

    return CustomPaint(
      child: Container(
        height: 300.0,
      ),
      painter: CurvePainter(),
    );

  }


  Widget _crearContainer(context) {

    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.1, 0.4, 0.7, 0.9],
          colors: [
            Color(0xFF3594DD),
            Color(0XFF4563D8),
            Color(0XFF5036D5),
            Color(0XFF5B16D0),
          ],
        ),
      ),
      child: Container(
        padding: EdgeInsets.only(top:145.0),
        child: Column(
          children: [
            Icon(Icons.blur_on_rounded, size: 150.0, color: Colors.white),
            SizedBox(height: 3.0),
            Text('ICare', style: TextStyle(color: Colors.white, fontSize: 42.0 ,decoration: TextDecoration.none, fontFamily: 'cinzel', fontWeight: FontWeight.bold)),
            SizedBox(height: 310.0),
            _botones(context),
          ],
        ),
      ),

    );

  }
  

  Widget _botones(context) {

    return Container(
      child: Column(
        children: [
          _crearBotones(context, 'INGRESAR', Colors.white, Colors.white, 'login'),//Color.fromRGBO(71, 54, 220, 1.0), Color.fromRGBO(79, 251, 251, 1.0), 'login'),
          _crearBotones(context, 'REGISTRO', Colors.white, Colors.white, 'registro'),//Color.fromRGBO(124, 13, 255, 1), Color.fromRGBO(59, 8, 79, 1), 'registro'),
        ],
      ),
    );

  }
  

  Widget _crearBotones(BuildContext context ,String texto, Color color1, Color color2, String ruta) {

      final Shader linearGradient = LinearGradient(
      colors: <Color>[Colors.cyan, Color(0xff8921aa)],
    ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

    return Container(
      child: Column(
        children: [
          RaisedButton(
    onPressed: () {
      Navigator.pushReplacementNamed(context, ruta);
    },
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
    padding: EdgeInsets.all(0.0),
    child: Ink(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [color1, color2],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          borderRadius: BorderRadius.circular(30.0)
      ),
      child: Container(
        constraints: BoxConstraints(maxWidth: 280.0, minHeight: 50.0),
        alignment: Alignment.center,
        child: Text(
          texto,
          textAlign: TextAlign.center,
          style: TextStyle(
            //color: Color(0xFF527DAA),
            foreground: Paint()..shader = linearGradient,
            letterSpacing: 1.5,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
        ),
      ),
    ),
  ),
        SizedBox(height: 18.0,)
        ],
      ),
    );
  }

  
}


class CurvePainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {
  Path path = Path();
  Paint paint = Paint();


 

  path = Path();
  path.lineTo(0, size.height*0.30);
  path.quadraticBezierTo(size.width*0.05, size.height*0.40, size.width*0.15, size.height*0.59);
  path.quadraticBezierTo(size.width*0.20, size.height*0.65, size.width*0.27, size.height*0.35);
  path.quadraticBezierTo(size.width*0.45, size.height*0.60, size.width*0.50, size.height*0.30);
  path.quadraticBezierTo(size.width*0.55, size.height*0.45, size.width*0.75, size.height*0.45);
  path.quadraticBezierTo(size.width*0.85, size.height*0.73, size.width, size.height*0.50);
  path.lineTo(size.width, 0);
  path.close();

  paint.color = Color.fromRGBO(3, 229, 255, 0.25);
  canvas.drawPath(path, paint);

  path =Path();
  path.lineTo(0, size.height*0.55);
  path.quadraticBezierTo(size.width*0.10, size.height*0.55, size.width*0.22, size.height*0.16);
  path.quadraticBezierTo(size.width*0.30, size.height*0.50, size.width*0.40, size.height*0.35);
  path.quadraticBezierTo(size.width*0.52, size.height*0.30, size.width*0.55, size.height*0.40);
  path.quadraticBezierTo(size.width*0.75, size.height*0.15, size.width, size.height*0.60);
  path.lineTo(size.width, 0);
  path.close();

  paint.color = Color.fromRGBO(238, 3, 255, 0.2);
  canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }


}