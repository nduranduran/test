import 'package:flutter/material.dart';

class CardNotartia extends StatefulWidget {

  String nombreNotario;
  String direccion;
  bool aceptado;

  CardNotartia({this.nombreNotario, this.direccion, this.aceptado});


  @override
  State<StatefulWidget> createState() {


    return _CardNotartiaState(
      direccion: this.direccion,
      nombreNotario: this.nombreNotario,
      aceptado: this.aceptado
    );
  }


  //@override
  //  State<StatefulWidget> => _CardNotartiaState(
  //   {
  //     direccion= this.direccion,
  //   nombreNotario = this.nombreNotario
  //   }
    
  //  );
}

class _CardNotartiaState extends State<CardNotartia> {

  String nombreNotario;
  String direccion;
  bool aceptado;

_CardNotartiaState({this.nombreNotario, this.direccion, this.aceptado});

  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;

    return Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(4.0)),
                boxShadow: <BoxShadow>[
                  new BoxShadow(
                    color: Color(0xFF000000).withOpacity(0.1),
                    blurRadius: 2,
                    offset: new Offset(0.0, 4.0),
                  ),
                ],
              ),
              
              margin: const EdgeInsets.all(10.0),
              width: size.width,
              height: 96.0,
              child: Padding(padding: EdgeInsets.all(10.0), 
              child: Column(
                children: <Widget>[
                  Row(
                    
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(this.nombreNotario,
                      style: TextStyle(
                        fontSize: 16
                      ),)
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(Icons.account_box),
                      Text(this.direccion)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      this.aceptado?Icon(Icons.check, color: this.aceptado?Colors.green:Colors.red,):Icon(Icons.close , color: this.aceptado?Colors.green:Colors.red,),
                      Text("Aceptado", style: TextStyle(color: this.aceptado?Colors.green:Colors.red),)
                    ],
                  )
                ],
              ),),
            );
  }
}