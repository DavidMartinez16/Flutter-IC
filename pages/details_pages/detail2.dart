import 'package:flutter/material.dart';


import 'package:pruebas/src/utils/utils.dart';
import 'package:pruebas/src/pages/utilities/textos.dart';
 
void main() => runApp(Detail2());
 
class Detail2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: Text('Síntomas'),
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

  Widget _crearContenido(BuildContext context){

    final size = MediaQuery.of(context).size;

   return SingleChildScrollView(
       
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      
      children: [
        Container(padding: EdgeInsets.only(left:20.0, top:size.height*0.14),child: Text('SÍNTOMAS',style: TextStyle(fontSize: 22.0,  fontFamily: 'OpenSans', fontWeight: FontWeight.bold))),
        SizedBox(height: 10.0),
        Container(padding: EdgeInsets.symmetric(horizontal: 20.0),child: Text(definicionSin, style: styleDefinicion, textAlign: TextAlign.justify,)),
        SizedBox(height: 10.0),
        Container(padding: EdgeInsets.symmetric(horizontal: 20.0),child: Text(sin1,style: styleDefinicion, textAlign: TextAlign.justify)),
        Container(padding: EdgeInsets.symmetric(horizontal: 20.0),child: Text(sin2,style: styleDefinicion, textAlign: TextAlign.justify)),
        Container(padding: EdgeInsets.symmetric(horizontal: 20.0),child: Text(sin3,style: styleDefinicion, textAlign: TextAlign.justify)),
        Container(padding: EdgeInsets.symmetric(horizontal: 20.0),child: Text(sin4,style: styleDefinicion, textAlign: TextAlign.justify)),
        Container(padding: EdgeInsets.symmetric(horizontal: 20.0),child: Text(sin5,style: styleDefinicion, textAlign: TextAlign.justify)),
        Container(padding: EdgeInsets.symmetric(horizontal: 20.0),child: Text(sin6,style: styleDefinicion, textAlign: TextAlign.justify)),
        Container(padding: EdgeInsets.symmetric(horizontal: 20.0),child: Text(sin7,style: styleDefinicion, textAlign: TextAlign.justify)),
        Container(padding: EdgeInsets.symmetric(horizontal: 20.0),child: Text(sin8,style: styleDefinicion, textAlign: TextAlign.justify)),
        Container(padding: EdgeInsets.symmetric(horizontal: 20.0),child: Text(sin9,style: styleDefinicion, textAlign: TextAlign.justify)),
        Container(padding: EdgeInsets.symmetric(horizontal: 20.0),child: Text(sin10,style: styleDefinicion, textAlign: TextAlign.justify)),
        Container(padding: EdgeInsets.symmetric(horizontal: 20.0),child: Text(sin11,style: styleDefinicion, textAlign: TextAlign.justify)),
        Container(padding: EdgeInsets.symmetric(horizontal: 20.0),child: Text(sin12,style: styleDefinicion, textAlign: TextAlign.justify)),
        Container(padding: EdgeInsets.symmetric(horizontal: 20.0),child: Text(sin13,style: styleDefinicion, textAlign: TextAlign.justify)),
        SizedBox(height: 30.0),
        Center(
          child: Container(child: FadeInImage(
            image: NetworkImage(linkSin),
            placeholder: AssetImage('assets/loading2.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 280.0,
            //width: 300.0,
            fit: BoxFit.fill,
          )),
        ),
        Container(padding: EdgeInsets.only(left:20.0, top:40.0),child: Text('CUANDO CONSULTAR AL MÉDICO',style: TextStyle(fontSize: 22.0,  fontFamily: 'OpenSans', fontWeight: FontWeight.bold))),
        SizedBox(height: 20.0),
        Container(padding: EdgeInsets.symmetric(horizontal: 20.0),child: Text(info1,style: styleDefinicion, textAlign: TextAlign.justify)),
        SizedBox(height: 15.0),
        Container(padding: EdgeInsets.symmetric(horizontal: 20.0),child: Text(info2,style: styleDefinicion, textAlign: TextAlign.justify)),
        Container(padding: EdgeInsets.symmetric(horizontal: 20.0),child: Text(info3,style: styleDefinicion, textAlign: TextAlign.justify)),
        Container(padding: EdgeInsets.symmetric(horizontal: 20.0),child: Text(info4,style: styleDefinicion, textAlign: TextAlign.justify)),
        Container(padding: EdgeInsets.symmetric(horizontal: 20.0),child: Text(info5,style: styleDefinicion, textAlign: TextAlign.justify)),
        SizedBox(height: 15.0),
        Container(padding: EdgeInsets.symmetric(horizontal: 20.0),child: Text(info6,style: styleDefinicion, textAlign: TextAlign.justify)),
        SizedBox(height: 15.0),
        Container(padding: EdgeInsets.symmetric(horizontal: 20.0),child: Text(info7,style: styleDefinicion, textAlign: TextAlign.justify)),
        SizedBox(height: 60.0),
      ],

    )
   );


  }

}