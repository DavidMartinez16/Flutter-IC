import 'package:flutter/material.dart';
import 'package:pruebas/src/pages/utilities/textos.dart';
import 'package:pruebas/src/utils/utils.dart';
 
void main() => runApp(Detail1());
 
class Detail1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: Text('Insuficiencia Cardíaca'),
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
        Container(padding: EdgeInsets.only(left:20.0, top:size.height*0.14),child: Text('DEFINICIÓN',style: TextStyle(fontSize: 22.0,  fontFamily: 'OpenSans', fontWeight: FontWeight.bold))),
        SizedBox(height: 10.0),
        Container(padding: EdgeInsets.symmetric(horizontal: 20.0),child: Text(definicionIC, style: styleDefinicion, textAlign: TextAlign.justify,)),
        SizedBox(height: 10.0),
        Container(child: Image.asset('assets/ic.gif')),
        Container(padding: EdgeInsets.only(left:20.0, top: 20.0),child: Text('TIEMPO DE EVOLUCIÓN',style: TextStyle(fontSize: 18.0,  fontFamily: 'OpenSans', fontWeight: FontWeight.bold))),
        SizedBox(height: 10.0),
        Container(padding: EdgeInsets.symmetric(horizontal: 20.0),child: Text(tipo1,style: styleDefinicion, textAlign: TextAlign.justify)),
        SizedBox(height: 10.0),
        Container(padding: EdgeInsets.symmetric(horizontal: 20.0),child: Text(tipo2,style: styleDefinicion, textAlign: TextAlign.justify)),
        SizedBox(height: 10.0),
        Container(padding: EdgeInsets.only(left:20.0, top: 20.0),child: Text('SÍNTOMAS Y SIGNOS PREDOMINANTES',style: TextStyle(fontSize: 18.0,  fontFamily: 'OpenSans', fontWeight: FontWeight.bold))),
        SizedBox(height: 10.0),
        Container(padding: EdgeInsets.symmetric(horizontal: 20.0),child: Text(tipo3,style: styleDefinicion, textAlign: TextAlign.justify)),
        SizedBox(height: 10.0),
        Container(padding: EdgeInsets.symmetric(horizontal: 20.0),child: Text(tipo4,style: styleDefinicion, textAlign: TextAlign.justify)),
        SizedBox(height: 10.0),
        Container(padding: EdgeInsets.symmetric(horizontal: 20.0),child: Text(tipo5,style: styleDefinicion, textAlign: TextAlign.justify)),
        SizedBox(height: 10.0),
        Container(padding: EdgeInsets.only(left:20.0, top: 20.0),child: Text('CAPACIDAD FUNCIONAL',style: TextStyle(fontSize: 18.0,  fontFamily: 'OpenSans', fontWeight: FontWeight.bold))),
        SizedBox(height: 10.0),
        Container(padding: EdgeInsets.symmetric(horizontal: 20.0),child: Text('Basada en las limitaciones que impone la enfermedad en relación con el desarrollo de actividad física. Se utiliza la clasificación funcional de la Asociación de Cardiología de Nueva York mostrada en la siguiente Tabla', style: styleDefinicion,textAlign: TextAlign.justify),),
        SizedBox(height: 10.0),
        Container(child: Image.asset('assets/tabla1.png')),
        SizedBox(height: 10.0),
        Container(padding: EdgeInsets.only(left:20.0, top: 20.0),child: Text('PROGRESIÓN DE LA ENFERMEDAD',style: TextStyle(fontSize: 18.0,  fontFamily: 'OpenSans', fontWeight: FontWeight.bold))),
        SizedBox(height: 10.0),
        Container(padding: EdgeInsets.symmetric(horizontal: 20.0),child: Text('Se reconocen 4 estadios de la enfermedad en consideración a la presencia de factores de riesgo que predisponen a IC, esto se muestra en la siguiente Tabla', style: styleDefinicion, textAlign: TextAlign.justify),),
        SizedBox(height: 10.0),
        Container(child: Image.asset('assets/tabla2.png')),
        SizedBox(height: 60.0),
      ],

    )
   );

  }

  

}