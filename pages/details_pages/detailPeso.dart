import 'package:flutter/material.dart';
import 'package:pruebas/src/pages/utilities/dataPeso.dart';
import 'package:pruebas/src/pages/utilities/textos.dart';
import 'package:pruebas/src/utils/utils.dart';

class DetailPagePeso extends StatelessWidget {
  final PesoInfo pesoInfo;

  const DetailPagePeso({Key key, this.pesoInfo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: Text('Libre Peso'),
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
                mostrarInfo3(context);
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
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _crearContenido( context ),
            ],
          )
        )
      ),
    );
  }

  Widget _crearContenido(BuildContext context){

    final style = TextStyle(
      fontSize: 16.5,
      fontFamily: 'OpenSans',
      color: Colors.black,
    );

    return Column(
      children: [
        SizedBox(height: 130.0,),
        Container(padding: EdgeInsets.symmetric(horizontal: 25.0),child: _crearInfo()),
        SizedBox(height: 30.0,),
        Container(padding: EdgeInsets.symmetric(horizontal: 20.0), child: Text(pesoInfo.name, style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold))),
        SizedBox(height: 25.0,),
        Text('PASO 1', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
        SizedBox(height: 20.0,),
        Container(padding: EdgeInsets.symmetric(horizontal: 25.0),child: Text(pesoInfo.description1, style: style, textAlign: TextAlign.justify)),
        SizedBox(height: 25.0),
        Container(padding: EdgeInsets.symmetric(horizontal: 20.0), child: Image.asset(pesoInfo.img1, fit: BoxFit.cover)),
        SizedBox(height: 25.0,),
        Text('PASO 2', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
        SizedBox(height: 20.0,),
        Container(padding: EdgeInsets.symmetric(horizontal: 25.0),child: Text(pesoInfo.description2, style: style, textAlign: TextAlign.justify)),
        SizedBox(height: 25.0),
        Container(padding: EdgeInsets.symmetric(horizontal: 20.0), child: Image.asset(pesoInfo.img2, fit: BoxFit.cover)),
        SizedBox(height: 100.0,),
      ],
    );
  }


  Widget _crearInfo() {

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40.0),
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
              )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(padding: EdgeInsets.symmetric(horizontal: 1.0),child: Text('* ' + pesoInfo.info1, style: TextStyle(color: Colors.white, fontSize: 22.0, fontWeight: FontWeight.bold), textAlign: TextAlign.justify)),
          SizedBox(height: 30.0,),
          Container(padding: EdgeInsets.symmetric(horizontal: 1.0),child: Text('* ' + pesoInfo.info2, style: TextStyle(color: Colors.white, fontSize: 22.0, fontWeight: FontWeight.bold), textAlign: TextAlign.justify)),
        ],
      ),
    );

  }

}