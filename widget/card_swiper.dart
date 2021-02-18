import 'package:flutter/material.dart';

import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pruebas/src/pages/details_pages/detail1.dart';
import 'package:pruebas/src/pages/details_pages/detail2.dart';
import 'package:pruebas/src/pages/details_pages/detail3.dart';
import 'package:pruebas/src/pages/details_pages/detail4.dart';


class CardSwiper extends StatelessWidget {


  //final List<dynamic> tarjetas;
  final Detail1 _detail1 = Detail1();
  final Detail2 _detail2 = Detail2();
  final Detail3 _detail3 = Detail3();
  final Detail4 _detail4 = Detail4();

  //CardSwiper({@required this.tarjetas});

  @override
  Widget build(BuildContext context) {
    
    final _screenSize = MediaQuery.of(context).size;

    
    List<String> numbers = [
      '1',
      '2',
      '3',
      '4',
    ];

    List<Icon> iconos = [
      Icon(FontAwesomeIcons.heartbeat,size: 70.0, color: Colors.white),
      Icon(FontAwesomeIcons.medkit,size: 70.0, color: Colors.white),
      Icon(FontAwesomeIcons.crosshairs,size: 70.0, color: Colors.white),
      Icon(FontAwesomeIcons.bookMedical,size: 70.0, color: Colors.white),
    ];

    List<String> title = [
      'Definición',
      'Síntomas',
      'Causas',
      'Tratamiento'
    ];

    List<String> subtitle = [
      'Aquí encontrarás toda la información que necesitas saber sobre la IC, tanto como su definición, sus etiologías y su clasificación.',
      'En la sección de los síntomas encontrarás la información necesaria sobre los signos y señales que puedes presentar en caso de que presentes IC.',
      'Existen una variedad de enfermedades y patologías que pueden ser causantes de la IC, aquí encontrarás toda la información necesaria.',
      'Recomendaciones en el tratamiento que no solo mejoran tu estilo de vida si fuiste diagnosticado con IC sino que también te pueden ayudar a prevenirla.'
    ];

    return Container(
      width: double.infinity,
      height: _screenSize.height * 0.35,
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Swiper(
        layout: SwiperLayout.STACK,
        itemWidth: _screenSize.width*0.85,
        //viewportFraction: 0.80,
        //scale: 0.92,
        itemBuilder: (BuildContext context,int index){
          
          return  InkWell(
            onTap: (){
              Navigator.push(context, PageRouteBuilder(
                transitionDuration: Duration(seconds: 1),
                transitionsBuilder: (BuildContext context, Animation<double> animation, Animation<double> secAnimation, Widget child){
                  animation = CurvedAnimation(parent: animation, curve: Curves.easeOutQuint);
                  return ScaleTransition(scale: animation, child: child, alignment: Alignment.center);
                },
                pageBuilder: (context,a,b)=> _pageChoser(index),

              ));
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  //stops: [0.1, 0.4, 0.7, 0.9],
                  colors: [
                    Color.fromRGBO(117, 199, 234, 1),
                    Color.fromRGBO(150, 100, 255,1),
                    /* Color(0xFF3594DD),
                    Color(0XFF4563D8),
                    Color(0XFF5036D5),
                    Color(0XFF5B16D0), */
                  ],
                ),
              ),
              
              child: Stack(
                children: [
                  Positioned(child: Text(numbers[index], style: TextStyle(fontSize: 80.0, color: Colors.white70, fontFamily: 'lilita')), top: 20.0, left: 25.0),
                  Positioned(child: iconos[index], top: 20.0, right: 30.0),
                  Positioned(child: Text(title[index], style: TextStyle(fontSize: 35.0, color: Colors.white)), top: 155.0,left: 15.0,),
                  Container(
                    padding: EdgeInsets.only(top:200, left:18.0, right: 18.0),
                    child: Text(
                      subtitle[index],
                      style: TextStyle(color: Colors.white, fontSize: 16.0), textAlign: TextAlign.justify,
                    )
                  )
                  //Container( padding: EdgeInsets.only(top: 100.0 ),child: Positioned(child: Column(children: [Text('En esta sección encontrarás toda la información sobre la definición de la IC')]))),
                ]
              ),
            ),
          );
          
        },
        itemCount: numbers.length,
        
        
      ),
    );
  }

  Widget _pageChoser(int page){
    switch (page){
      case 0:
      return _detail1;
      break;
      case 1:
      return _detail2;
      break;
      case 2:
      return _detail3;
      break;
      case 3:
      return _detail4;
      break;
    }
  }

 

}