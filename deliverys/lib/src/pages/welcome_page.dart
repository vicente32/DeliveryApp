import 'package:flutter/material.dart';
import 'dart:ui';

class WelcomePage extends StatelessWidget {
  
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage('https://blog.skydropx.com/wp-content/uploads/2020/03/rastreo-paquete-express.jpg')
              )
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
              child: Container(
                color: Colors.black.withOpacity(0.3),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text("ENTREGAS A SU DOMICILIO", style: TextStyle(
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  fontSize: 40.0,
                ),),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
                child: Text(
                  "indicar destino donde se deberia realizar la entrega", 
                  style: TextStyle(
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w500,
                    fontSize: 20.0,
                  )
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                width: 350,
                height: 45,
                child: RaisedButton(
                  onPressed: () {

                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20) 
                  ),
                  color: Theme.of(context).accentColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15
                        ),
                      )
                    ]
                  ),
                ),
              ),
              // Container(
              //   width: 350,
              //   height: 45,
              //   child: RaisedButton(
              //     onPressed: () {

              //     },
              //     shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(20) 
              //     ),
              //     color: Theme.of(context).accentColor,
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       children: [
              //         Image(
              //           image: AssetImage('../assets/google-logo.jpg'),
              //         ),
              //         Text(
              //           'Conectar con google',
              //           style: TextStyle(
              //             color: Colors.white,
              //             fontSize: 15
              //           ),
              //         )
              //       ]
              //     ),
              //   ),
              // )
            ],
          )
        ],
      )
    );
  }
}