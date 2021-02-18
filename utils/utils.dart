

import 'package:flutter/material.dart';

bool isNumeric( String s ) {

  if ( s.isEmpty ) return false;

  final n = num.tryParse(s);

  return ( n == null ) ? false : true;

}

void mostrarAlerta(BuildContext context, String mensaje) {

  showDialog(
    context: context,
    builder: (context){
      return AlertDialog(
        title: Text('Información Incorrecta'),
        content: Text(mensaje),
        actions: [
          FlatButton(
          onPressed: ()=> Navigator.of(context).pop(), 
          child: Text('OK')
          )
        ],
      );
    }
  );

}

void mostrarInfo(BuildContext context) {

  showDialog(
    context: context,
    builder: (context){
      return AlertDialog(
        title: Text('Información Importante'),
        content: Text('En esta aplicación encontrarás toda la información que necesitas sobre la Insuficiencia Cardíaca, en ningún momento funciona como remplazo a tu médico especialista.'),
        actions: [
          FlatButton(
          onPressed: ()=> Navigator.of(context).pop(), 
          child: Text('OK')
          )
        ],
      );
    }
  );

}


void mostrarInfo2(BuildContext context) {

  showDialog(
    context: context,
    builder: (context){
      return AlertDialog(
        title: Text('    Información Obtenida de', textAlign: TextAlign.justify),
        content: Container(
          height: 100.0,
          child: Column(
            children: [
              Text('• Fundación Cardiovascular', textAlign: TextAlign.justify),
              Text('• Sociedad Chilena de Cardiología y ', textAlign: TextAlign.justify),
              Text('Cirugía Cardiovascular',textAlign: TextAlign.justify),
              Text('• https://insuficienciacardiaca.es/', textAlign: TextAlign.justify),
              Text('• medicamedlineplus.gov', textAlign: TextAlign.justify),
            ],
          ),
        ),
        actions: [
          FlatButton(
          onPressed: ()=> Navigator.of(context).pop(), 
          child: Text('OK')
          )
        ],
      );
    }
  );

}

void mostrarInfo3(BuildContext context) {

  showDialog(
    context: context,
    builder: (context){
      return AlertDialog(
        title: Text('  Derechos de Autor', textAlign: TextAlign.justify),
        content: Container(
          height: 100.0,
          child: Column(
            children: [
              Text('Toda la información e imágenes fueron obtenidas de: ', textAlign: TextAlign.justify),
              Text('Hospital Regional Universitario de Málaga ', textAlign: TextAlign.center),
              Text('• Dra. Francisca Fernández Luque',textAlign: TextAlign.center),
              Text('• Dr. Javier Mora Robles', textAlign: TextAlign.center),
              Text('• Dra. Marta Cantador Hornero', textAlign: TextAlign.center),
            ],
          ),
        ),
        actions: [
          FlatButton(
          onPressed: ()=> Navigator.of(context).pop(), 
          child: Text('OK')
          )
        ],
      );
    }
  );

}