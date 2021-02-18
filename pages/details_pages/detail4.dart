import 'package:flutter/material.dart';

import 'package:pruebas/src/utils/utils.dart';
import 'package:pruebas/src/pages/utilities/textos.dart';
 
void main() => runApp(Detail4());
 
class Detail4 extends StatelessWidget {
   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: Text('Tratamiento'),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_rounded),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.info_outline_rounded), 
              onPressed: (){
                mostrarInfo(context);
              },
            ),
            IconButton(
              icon: Icon(Icons.receipt_long_outlined), 
              onPressed: (){
                mostrarInfo2(context);
              },
            ),

          ],
          flexibleSpace: Container(
            decoration: BoxDecoration(
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
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _crearContenido( context ),
            ],
          )
        )
      ),
    );
  }

  Widget _crearContenido( BuildContext context ){


    final size = MediaQuery.of(context).size;

   return SingleChildScrollView(
       
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      
      children: [
        Container(padding: EdgeInsets.only(left:20.0, top:size.height*0.14),child: Text('TRATAMIENTO',style: TextStyle(fontSize: 22.0,  fontFamily: 'OpenSans', fontWeight: FontWeight.bold))),
        SizedBox(height: 10.0),
        Container(padding: EdgeInsets.symmetric(horizontal: 20.0),child: Text(definicionTra1, style: styleDefinicion, textAlign: TextAlign.justify,)),
        SizedBox(height: 10.0),
        Container(padding: EdgeInsets.symmetric(horizontal: 20.0),child: Text(definicionTra2,style: styleDefinicion, textAlign: TextAlign.justify)),
        SizedBox(height: 30.0),
        Center(
          child: Container(child: FadeInImage(
            image: NetworkImage(linkTra),
            placeholder: AssetImage('assets/loading2.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 280.0,
            fit: BoxFit.fill,
          )),
        ),
        SizedBox(height: 20.0),
        Container(padding: EdgeInsets.symmetric(horizontal: 20.0),child: Text(text4,style: styleDefinicion, textAlign: TextAlign.justify)),
        SizedBox(height: 10.0),
        Container(padding: EdgeInsets.only(left:20.0, top:30.0),child: Text('INHIBIDORES DE ENZIMA DE LA ANGIOTENSINA',style: TextStyle(fontSize: 18.0,  fontFamily: 'OpenSans', fontWeight: FontWeight.bold))),
        SizedBox(height: 10.0),
        Container(padding: EdgeInsets.symmetric(horizontal: 20.0),child: Text(eca,style: styleDefinicion, textAlign: TextAlign.justify)),
        SizedBox(height: 10.0),
        Container(padding: EdgeInsets.only(left:20.0, top:20.0),child: Text('ANTAGONISTA DEL RECEPTOR DE LA ANGIOTENSINA',style: TextStyle(fontSize: 18.0,  fontFamily: 'OpenSans', fontWeight: FontWeight.bold))),
        SizedBox(height: 10.0),
        Container(padding: EdgeInsets.symmetric(horizontal: 20.0),child: Text(ara,style: styleDefinicion, textAlign: TextAlign.justify)),
        SizedBox(height: 10.0),
        Container(padding: EdgeInsets.only(left:20.0, top:20.0),child: Text('BETABLOQUEADORES',style: TextStyle(fontSize: 18.0,  fontFamily: 'OpenSans', fontWeight: FontWeight.bold))),
        SizedBox(height: 10.0),
        Container(padding: EdgeInsets.symmetric(horizontal: 20.0),child: Text(beta,style: styleDefinicion, textAlign: TextAlign.justify)),
        SizedBox(height: 10.0),
        Container(padding: EdgeInsets.only(left:20.0, top:20.0),child: Text('DIURÉTICOS',style: TextStyle(fontSize: 18.0,  fontFamily: 'OpenSans', fontWeight: FontWeight.bold))),
        SizedBox(height: 10.0),
        Container(padding: EdgeInsets.symmetric(horizontal: 20.0),child: Text(diu,style: styleDefinicion, textAlign: TextAlign.justify)),
        SizedBox(height: 10.0),
        Container(padding: EdgeInsets.only(left:20.0, top:20.0),child: Text('DIGOXINA (LANOXIN)',style: TextStyle(fontSize: 18.0,  fontFamily: 'OpenSans', fontWeight: FontWeight.bold))),
        SizedBox(height: 10.0),
        Container(padding: EdgeInsets.symmetric(horizontal: 20.0),child: Text(digo,style: styleDefinicion, textAlign: TextAlign.justify)),
        SizedBox(height: 15.0),
        Container(padding: EdgeInsets.symmetric(horizontal: 20.0),child: Text(textFinal,style: styleDefinicion, textAlign: TextAlign.justify)),
        SizedBox(height: 60.0),
      ],

    )
   );
    

  }

}