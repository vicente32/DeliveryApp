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
                fit: BoxFit.fitWidth,
                image: NetworkImage('https://th.bing.com/th/id/OIP.wB_otRXqj01-9kd_hBT_tAHaHU?pid=ImgDet&w=1200&h=1186&rs=1')
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
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 40.0,
                ),),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
                child: Text(
                  "indicar destino donde se deberia realizar la entrega", 
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 20.0,
                  )
                ),
              )
            ],
          )
        ],
      )
    );
  }
}