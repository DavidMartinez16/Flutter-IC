import 'package:flutter/material.dart';

import 'package:pruebas/src/utils/utils.dart';
import 'package:pruebas/src/pages/utilities/textos.dart';
 
void main() => runApp(Detail3());
 
class Detail3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: Text('Causas'),
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
        Container(padding: EdgeInsets.only(left:20.0, top:size.height*0.14),child: Text('CAUSAS',style: TextStyle(fontSize: 22.0,  fontFamily: 'OpenSans', fontWeight: FontWeight.bold))),
        SizedBox(height: 20.0),
        Container(padding: EdgeInsets.symmetric(horizontal: 20.0),child: Text(definicionCau, style: styleDefinicion, textAlign: TextAlign.justify,)),
        SizedBox(height: 10.0),
        Container(padding: EdgeInsets.symmetric(horizontal: 20.0),child: Text(text1,style: styleDefinicion, textAlign: TextAlign.justify)),
        SizedBox(height: 10.0),
        Container(padding: EdgeInsets.symmetric(horizontal: 20.0),child: Text(comun1,style: styleDefinicion, textAlign: TextAlign.justify)),
        SizedBox(height: 10.0),
        Container(padding: EdgeInsets.symmetric(horizontal: 20.0),child: Text(comun2,style: styleDefinicion, textAlign: TextAlign.justify)),
        SizedBox(height: 30.0),
        Center(
          child: Container(child: FadeInImage(
            image: NetworkImage(linkCau),
            placeholder: AssetImage('assets/loading2.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 280.0,
            fit: BoxFit.fill,
          )),
        ),
        SizedBox(height: 30.0),
        Container(padding: EdgeInsets.symmetric(horizontal: 20.0),child: Text(text2,style: styleDefinicion, textAlign: TextAlign.justify)),
        SizedBox(height: 10.0),
        Container(padding: EdgeInsets.symmetric(horizontal: 20.0),child: Text(cau1,style: styleDefinicion, textAlign: TextAlign.justify)),
        Container(padding: EdgeInsets.symmetric(horizontal: 20.0),child: Text(cau2,style: styleDefinicion, textAlign: TextAlign.justify)),
        Container(padding: EdgeInsets.symmetric(horizontal: 20.0),child: Text(cau3,style: styleDefinicion, textAlign: TextAlign.justify)),
        Container(padding: EdgeInsets.symmetric(horizontal: 20.0),child: Text(cau4,style: styleDefinicion, textAlign: TextAlign.justify)),
        Container(padding: EdgeInsets.symmetric(horizontal: 20.0),child: Text(cau5,style: styleDefinicion, textAlign: TextAlign.justify)),
        SizedBox(height: 10.0),
        Container(padding: EdgeInsets.symmetric(horizontal: 20.0),child: Text(text3,style: styleDefinicion, textAlign: TextAlign.justify)),
        SizedBox(height: 10.0),
        Container(padding: EdgeInsets.symmetric(horizontal: 20.0),child: Text(enf1,style: styleDefinicion, textAlign: TextAlign.justify)),
        Container(padding: EdgeInsets.symmetric(horizontal: 20.0),child: Text(enf2,style: styleDefinicion, textAlign: TextAlign.justify)),
        Container(padding: EdgeInsets.symmetric(horizontal: 20.0),child: Text(enf3,style: styleDefinicion, textAlign: TextAlign.justify)),
        Container(padding: EdgeInsets.symmetric(horizontal: 20.0),child: Text(enf4,style: styleDefinicion, textAlign: TextAlign.justify)),
        Container(padding: EdgeInsets.symmetric(horizontal: 20.0),child: Text(enf5,style: styleDefinicion, textAlign: TextAlign.justify)),
        Container(padding: EdgeInsets.symmetric(horizontal: 20.0),child: Text(enf6,style: styleDefinicion, textAlign: TextAlign.justify)),
        Container(padding: EdgeInsets.symmetric(horizontal: 20.0),child: Text(enf7,style: styleDefinicion, textAlign: TextAlign.justify)),
        
        SizedBox(height: 60.0),
      ],

    )
   );

  }

}
