import 'package:deliverys/src/widgets/back_button.dart';
import 'package:flutter/material.dart';

//UI
import 'package:flutter/services.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle.light.copyWith(statusBarColor: Colors.white));

    return Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Column(
          children: [
            Stack(
              children: [
                Image(
                    width: double.infinity,
                    height: 350.0,
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://images.vexels.com/media/users/3/148467/preview2/82321de90aca4a376e35822830fc42fc-vector-de-dibujos-animados-de-hombre-de-entrega.jpg')),
                Container(
                  margin: EdgeInsets.only(top: 50.0),
                  child: backButton(context, Colors.black),
                )
              ],
            ),
            Transform.translate(
              offset: Offset(0.0, -120.0),
              child: Container(
                width: double.infinity,
                height: 350.0,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30.0)),
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Center(
                    child: Column(
                      children: [
                        Text('Bienvenido',
                            style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 30.0)),
                        Text('Ingrese a su cuenta',
                            style: TextStyle(
                                color: Colors.blueGrey,
                                fontWeight: FontWeight.w500,
                                fontSize: 15.0)),
                        _emailInput(),
                        Divider(),
                        _passwordInput(),
                        _loginButton(context),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}

Widget _emailInput() {
  return Container(
    margin: EdgeInsets.only(top: 25.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
        color: Colors.orange[50], borderRadius: BorderRadius.circular(30.0)),
    child: TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          hintText: 'Email',
          border: OutlineInputBorder(borderSide: BorderSide.none)),
    ),
  );
}

Widget _passwordInput() {
  return Container(
    margin: EdgeInsets.only(top: 5.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
        color: Colors.orange[50], borderRadius: BorderRadius.circular(30.0)),
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
          hintText: 'Contraseña',
          border: OutlineInputBorder(borderSide: BorderSide.none)),
    ),
  );
}

Widget _loginButton(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(top: 30),
    width: 350,
    height: 45,
    child: RaisedButton(
      onPressed: () {
        Navigator.push(context,
            new MaterialPageRoute(builder: (context) => new LoginPage()));
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      color: Theme.of(context).accentColor,
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          'Login',
          style: TextStyle(color: Colors.white, fontSize: 15),
        )
      ]),
    ),
  );
}
