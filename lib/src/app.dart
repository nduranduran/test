import 'package:flutter/material.dart';
import 'package:proyecto_prueba/src/ui/Citas.dart';
import 'package:proyecto_prueba/src/ui/SecondScreen.dart';
import 'package:proyecto_prueba/src/ui/TerceraPagina.dart';

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple
      ),
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => Citas(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/segundo': (context) => SecondScreen(),
        '/tercero': (context) => TerceraPagina(),
        '/cuarto': (context) => SecondScreen(),
      },
        );
      }
}