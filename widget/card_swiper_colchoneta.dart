import 'package:flutter/material.dart';

import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pruebas/src/pages/details_pages/detailColchoneta.dart';
import 'package:pruebas/src/pages/utilities/dataColchoneta.dart';



class CardSwiperColchoneta extends StatelessWidget {

  final Color color1;
  final Color color2;
  final List lista;
  final Function paginaDetail;
  final List info;

  CardSwiperColchoneta({@required this.color1, this.color2, this.lista, this.paginaDetail, this.info});

  @override
  Widget build(BuildContext context) {
        
    final _screenSize = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: _screenSize.height * 0.25,
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Swiper(
        viewportFraction: 0.63,
        scale: 0.85,
        itemBuilder: (BuildContext context,int index){
          return  InkWell(
            onTap: (){
              Navigator.push(context, PageRouteBuilder(
                transitionDuration: Duration(seconds: 1),
                transitionsBuilder: (BuildContext context, Animation<double> animation, Animation<double> secAnimation, Widget child){
                  animation = CurvedAnimation(parent: animation, curve: Curves.easeOutQuint);
                  return ScaleTransition(scale: animation, child: child, alignment: Alignment.center);
                },
                pageBuilder: (context,a,b)=> DetailPageColchoneta(colchonetaInfo: colchoneta[index]),

              ));
            },
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    color1,
                    color2,
                  ],
                ),
                borderRadius: BorderRadius.circular(20.0)
              ),
               
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:[
                        Text((index + 1).toString(), style:TextStyle(fontSize: 50.0, color: Colors.white)),
                        SizedBox(width: 94.0),
                        Icon(FontAwesomeIcons.accusoft, color: Colors.white, size: 50.0),
                    ]),
                  ),
                  SizedBox(height: 25.0),
                  Container(padding: EdgeInsets.symmetric(horizontal: 25.0),child: Text(lista[index].name, style: TextStyle(color: Colors.white, fontSize: 22.0), textAlign: TextAlign.center)),
                  SizedBox(height: 10.0,),
                  Container(
                    
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      color: Colors.green[600]
                    ),
                    child: FlatButton.icon(
                      onPressed: (){
                        Navigator.push(context, PageRouteBuilder(
                          transitionDuration: Duration(seconds: 1),
                          transitionsBuilder: (BuildContext context, Animation<double> animation, Animation<double> secAnimation, Widget child){
                            animation = CurvedAnimation(parent: animation, curve: Curves.easeOutQuint);
                            return ScaleTransition(scale: animation, child: child, alignment: Alignment.center);
                          },
                          pageBuilder: (context,a,b)=> DetailPageColchoneta(colchonetaInfo: colchoneta[index]),
                        )
                        );
                      },
                      label: Text('Leer Más', style: TextStyle(color: Colors.white)),
                      icon: Icon(Icons.arrow_forward_ios_outlined, color: Colors.white), 
                      
                    ),
                  ),
                  
                ],
              ),
            )
          );
        },
        itemCount: lista.length,
        
        
      ),
    );
  } 


}