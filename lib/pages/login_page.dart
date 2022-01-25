import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

class LoginPage extends StatelessWidget {
  static String id = "login_page";
  final usu = TextEditingController();
  final pass = TextEditingController();
  String usuario = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.blue, Colors.green]),
          ),
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.center, //linea para cetrar el texto
            children: [
              Text(
                " Admin  \Retailmi",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 55,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Inicio Sesion',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold)),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 30.0,
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: TextField(
                  controller: usu,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email_outlined),
                    labelText: 'Usuario',
                    hintText: 'ejemplo@ejemplo',
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 30.0,
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: TextField(
                  controller: pass,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock_clock_rounded),
                    labelText: 'password',
                    hintText: '',
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              RaisedButton(
                color: Colors.white,
                padding: EdgeInsets.symmetric(
                  horizontal: 35.0, //largo del boton
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  'Inicar sesion.',
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
                onPressed: () {
                  usuario = usu.text;
                  password = pass.text;
                  if (usuario == 'lorena@admin' && password == '1234') {
                    Navigator.pushNamed(context, "eleccion");
                  } else {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('Problema al iniciar sesion'),
                            content: SingleChildScrollView(
                              child: ListBody(
                                children: [
                                  Text('Usuario o contraseña no coinciden'),
                                ],
                              ),
                            ),
                          );
                        });
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
