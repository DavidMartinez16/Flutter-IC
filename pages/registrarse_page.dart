import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/services.dart';
import 'package:pruebas/src/bloc/provider.dart';
import 'package:pruebas/src/pages/utilities/constants.dart';
import 'package:pruebas/src/providers/usuario_provider.dart';
import 'package:pruebas/src/utils/utils.dart';


class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  

  Widget _buildEmailTF(LoginBloc bloc) {

    final bloc = Provider.of(context);

    return StreamBuilder(
      stream: bloc.emailStream,
      builder: (BuildContext context, AsyncSnapshot snapshot){
        
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Correo Electrónico',
            style: kLabelStyle,
          ),
          SizedBox(height: 10.0),
          Container(
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.white,
            ),
            height: 60.0,
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.black,
                fontFamily: 'OpenSans',
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14.0),
                prefixIcon: Icon(
                  Icons.email_rounded,
                  color: Colors.black,
                ),
                hintText: 'Ingresa tu Email',
                hintStyle: TextStyle(color: Colors.grey[400]),
                errorText: snapshot.error,
              ),
              onChanged: bloc.changeEmail,
            ),
          ),
        ],
      );

      },
    );

  }

  Widget _buildPasswordTF(LoginBloc bloc) {

    final bloc = Provider.of(context);


    return StreamBuilder(
      stream: bloc.passwordStream,
      builder: (BuildContext context, AsyncSnapshot snapshot){
        
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Contraseña',
              style: kLabelStyle,
            ),
            SizedBox(height: 10.0),
            Container(
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,
              ),
              height: 60.0,
              child: TextField(
                obscureText: true,
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.black,
                  fontFamily: 'OpenSans',
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 14.0),
                  prefixIcon: Icon(
                    Icons.lock_rounded,
                    color: Colors.black,
                  ),
                  hintText: 'Ingresa tu contraseña',
                  hintStyle: TextStyle(color: Colors.grey[400]),
                  errorText: snapshot.error,
                ),
                onChanged: bloc.changePassword,
              ),
            ),
          ],
        );

      },
    );
    
  }


  Widget _buildLoginBtn(LoginBloc bloc) {

    final Shader linearGradient = LinearGradient(
      colors: <Color>[Colors.cyan, Color(0xff8921aa)],
    ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));



    return StreamBuilder(
      stream: bloc.formValidStream,
      builder: (BuildContext context, AsyncSnapshot snapshot){
        
        return Container(
          padding: EdgeInsets.symmetric(vertical: 25.0),
          width: double.infinity,
          child: RaisedButton(
            elevation: 5.0,
            onPressed: snapshot.hasData ? ()=> _register(bloc, context) : null,
            padding: EdgeInsets.all(15.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            color: Colors.white,
            child: Text(
              'REGISTRARME',
              style: TextStyle(
                foreground: Paint()..shader = linearGradient,
                letterSpacing: 1.5,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'OpenSans',
              ),
            ),
          ),
        );
      },
    );
  }



  _register(LoginBloc bloc, BuildContext context) async {

    final info = await usuarioProvider.nuevoUsuario(bloc.email, bloc.password);

     if ( info['ok']) {
      Navigator.pushReplacementNamed(context, 'home');
    } else {
      mostrarAlerta(context, info['mensaje']);
    }

  }

 

  Widget _buildSignupBtn() {
    return GestureDetector(
      onTap: () => Navigator.pushReplacementNamed(context, 'login'),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: '¿Ya tienes una cuenta? ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            TextSpan(
              text: 'Ingresar',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  final usuarioProvider = new UsuarioProvider();

  @override
  Widget build(BuildContext context) {

    final bloc = Provider.of(context);

    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: <Widget>[
              
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
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
                  ),
                ),
              ),
              Container(
                height: double.infinity,
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 40.0,
                    vertical: 60.0,
                  ),
                  
                  child: Column(
                    
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 50.0),
                      Text(
                        'Registrarme',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'OpenSans',
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 110.0),
                      _buildEmailTF(bloc),
                      SizedBox(
                        height: 30.0,
                      ),
                      _buildPasswordTF(bloc),
                      SizedBox(height: 30.0),
                      _buildLoginBtn(bloc),
                      //_buildSignInWithText(),
                      //_buildSocialBtnRow(),
                      SizedBox(height: 50.0),
                      _buildSignupBtn(),
                    ],
                  ),
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}

