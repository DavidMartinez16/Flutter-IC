import 'package:flutter/material.dart';
import 'package:pruebas/src/pages/details_pages/detailCalentamiento.dart';
import 'package:pruebas/src/pages/utilities/dataCalentamiento.dart';
import 'package:pruebas/src/pages/utilities/dataColchoneta.dart';
import 'package:pruebas/src/pages/utilities/dataPeso.dart';
import 'package:pruebas/src/widget/card_swiper.dart';
import 'package:pruebas/src/widget/card_swiper_colchoneta.dart';
import 'package:pruebas/src/widget/card_swiper_inferior.dart';
import 'package:pruebas/src/widget/card_swiper_peso.dart';



class EducatePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: SingleChildScrollView(
          child: Column(
          children: [
            _crearFondo( context ),
            SizedBox(height: 30.0),
            _crearContenido( context ),
          ],
        )
        ),
      );
  }


  Widget _crearFondo( BuildContext context){


    final size = MediaQuery.of(context).size;

    final fondoApp = Container(
      height: size.height * 0.3,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(75.0)),
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          stops: [0.1, 0.4, 0.7, 0.9],
          colors: [
            Color(0xFF3594DD),
            Color(0XFF4563D8),
            Color(0XFF5036D5),
            Color(0XFF5B16D0),
          ],
        )
      ),
    );

    final circulo1 = Container(
      width: 100.0,
      height: 100.0,
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
        fondoApp,
        Positioned(top: -10.0, left: -10.0, child: circulo1),
        //Positioned(bottom: 20.0, right: 25.0, child: circulo2),
        Positioned(top: 110.0, right: -40.0, child: circulo2),
        //Positioned(bottom: 40.0, right: 8.0, child: circulo2),
        Container(
          padding: EdgeInsets.only(top: 75.0, left: 40.0, right: 40.0),
          child: Column(
            children: [
              Text('Bienvenido a Edúcate', style: TextStyle(color: Colors.white, fontSize: 28.0, fontFamily: 'OpenSans', letterSpacing: 1.0)),
              SizedBox(height: 33.0, width: double.infinity),
              Text('En esta sección encontrarás todo lo que necesitas saber sobre Insuficiencia Cardíaca, también encontrarás recomendaciones para tu dieta y una serie de ejercicios que te ayudarán en tu proceso de autocuidado.',
                   style: TextStyle(color: Colors.white60, fontSize: 15.5), textAlign: TextAlign.center),
            ],
          ),
        )
      ],
    );

  }

  Widget _crearContenido( BuildContext context){

    final String textCalentamiento = 'Esta sección consta de instrucciones e imágenes para realizar el calentamiento, ejercicios de estiramiento claves y de fortalecimiento, así como estiramientos adicionales que te ayudarán a mejorar tu estado de salud.';
    final String textPeso = 'Los ejercicios con peso libre son aquellos que utilizan un elemento externo para desarrollar el músculo. Puedes utilizar mancuernas, ketteballs, pesas o elementos caseros como botellas de agua. Estos ejercicios son muy buenos para trabajar uno o varios músculos del mismo grupo de forma individual y focalizada, además que te ayudarán a mantener un buen estado de salud.';
    final String textColchoneta = 'En esta sección encontrarás un serie de ejercicios que puedes realizar en una colchoneta desde la comodidad de tu hogar, ejercicios de estiramiento y de fortalecimiento que te ayudarán a cuidarte y mantener un estilo de vida saludable.';

    return SingleChildScrollView(
      /* child: Container(
        padding: EdgeInsets.only(top: 0.0, left: 20.0), */
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            
            children: [
              Container(padding: EdgeInsets.only(left:20.0),child: Text('Insuficiencia Cardíaca',style: TextStyle(fontSize: 27.0,  fontFamily: 'OpenSans', fontWeight: FontWeight.bold))),
              SizedBox(height: 16.0,),
              _swiperTarjetas(),
              SizedBox(height: 30.0,),
              Container(padding: EdgeInsets.only(left:20.0),child: Text('Actividad Física',style: TextStyle(fontSize: 27.0, fontFamily: 'OpenSans', fontWeight: FontWeight.bold))),
              SizedBox(height: 16.0),
              Container(padding: EdgeInsets.only(left:20.0),child: Text('Calentamiento',style: TextStyle(fontSize: 22.0, fontFamily: 'OpenSans', fontWeight: FontWeight.bold))),
              SizedBox(height: 25.0,),
              Container(padding: EdgeInsets.only(left:20.0),child: Text( textCalentamiento ,style: TextStyle(fontSize: 19.0 ,fontFamily: 'OpenSans'), textAlign: TextAlign.justify)),
              SizedBox(height: 25.0,),
              _swiperTarjetasInferior1(),
              SizedBox(height: 25.0,),
              Container(padding: EdgeInsets.only(left:20.0),child: Text('Libre Peso',style: TextStyle(fontSize: 22.0 ,fontFamily: 'OpenSans', fontWeight: FontWeight.bold))),
              SizedBox(height: 25.0,),
              Container(padding: EdgeInsets.only(left:20.0),child: Text( textPeso ,style: TextStyle(fontSize: 19.0 ,fontFamily: 'OpenSans'), textAlign: TextAlign.justify)),
              SizedBox(height: 25.0,),
              _swiperTarjetasInferior2(),
              SizedBox(height: 25.0,),
              Container(padding: EdgeInsets.only(left:20.0),child: Text('Colchoneta',style: TextStyle(fontSize: 22.0 ,fontFamily: 'OpenSans', fontWeight: FontWeight.bold))),
              SizedBox(height: 25.0,),
              Container(padding: EdgeInsets.only(left:20.0),child: Text( textColchoneta ,style: TextStyle(fontSize: 19.0 ,fontFamily: 'OpenSans'), textAlign: TextAlign.justify)),
              SizedBox(height: 25.0,),
              _swiperTarjetasInferior3(),
              SizedBox(height: 30.0,),
            
            ],
          ),
        /* ), */
    );

  }

  Widget _swiperTarjetas() {

    return CardSwiper(
      
    );

  }

  Widget _swiperTarjetasInferior1() {

    return CardSwiperInferior(
      color1: Color.fromRGBO(255, 105, 98, 1),
      color2: Color.fromRGBO(255, 169, 169, 1),
      lista: exercises,
    );

  }

  Widget _swiperTarjetasInferior2() {

    return CardSwiperPeso(
      color1: Color.fromRGBO(120, 162, 204, 1),
      color2: Color.fromRGBO(164, 195, 210, 1),
      lista: peso,
    );

  }

   Widget _swiperTarjetasInferior3() {

    return CardSwiperColchoneta(
      color1: Color.fromRGBO(0, 231, 170, 1),
      color2: Color.fromRGBO(143, 193, 169, 1),
      lista: colchoneta,
    );

  }


}