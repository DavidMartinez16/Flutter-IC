import 'dart:convert';
import 'package:http/http.dart'as http;
import 'package:pruebas/src/preferencias_usuario/preferencias_usuario.dart';

class UsuarioProvider {

  final String _firebaseToken = 'AIzaSyBECwdHEylAin8BJFhh1Kv0gcXNLpoeZqM';

  final _prefs = new PreferenciasUsuario();


  Future<Map<String, dynamic>> login(String email, String password) async {


     final authData = {
      'email'             : email,
      'password'          : password,
      'returnSecureToken' : true,
    };

    final resp = await http.post(
      'https://www.googleapis.com/identitytoolkit/v3/relyingparty/verifyPassword?key=$_firebaseToken',
      body: json.encode( authData)
    );

    Map<String, dynamic> decodedResp = json.decode( resp.body);

    print(decodedResp);

    if (decodedResp.containsKey('idToken')) {

      _prefs.token = decodedResp['idToken'];

      return {'ok' : true , 'token' : decodedResp['idToken']};

    } else {

      return {'ok' : false , 'mensaje' : decodedResp['error']['message']};

    }


  }



  Future<Map<String, dynamic>> nuevoUsuario(String email, String password) async {


    final authData = {
      'email'             : email,
      'password'          : password,
      'returnSecureToken' : true,
    };

    final resp = await http.post(
      'https://www.googleapis.com/identitytoolkit/v3/relyingparty/signupNewUser?key=$_firebaseToken',
      body: json.encode( authData)
    );

    Map<String, dynamic> decodedResp = json.decode( resp.body);

    print(decodedResp);

    if (decodedResp.containsKey('idToken')) {

      _prefs.token = decodedResp['idToken'];

      return {'ok' : true , 'token' : decodedResp['idToken']};

    } else {

      return {'ok' : false , 'mensaje' : decodedResp['error']['message']};

    }




  }


}