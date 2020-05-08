import 'package:flutter/material.dart';
import 'package:proyecto_prueba/src/ui/widgets/CardNotaria.dart';

class Citas extends StatefulWidget {
  @override
  _CitasState createState() => _CitasState();
}

class _CitasState extends State<Citas> {

  int _selectedIndex = 0;



  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;


    return Scaffold(
      appBar: AppBar(title: Text('Lista de Citas'),),
      drawer: Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: const <Widget>[
        DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          child: Text(
            'Drawer Header',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ),
        ListTile(
          leading: Icon(Icons.message),
          title: Text('Messages'),
        ),
        ListTile(
          leading: Icon(Icons.account_circle),
          title: Text('Profile'),
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text('Settings'),
        ),
      ],
    ),),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            CardNotartia(direccion: "Av lima", nombreNotario: "EL nombre",aceptado: true,),
            CardNotartia(direccion: "Av lima", nombreNotario: "EL nombre",aceptado: false,),
            CardNotartia(direccion: "Av lima", nombreNotario: "EL nombre",aceptado: true,)
          ],
        ),
      ),
    bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            title: Text('Business'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            title: Text('School'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: (value){
          setState(() {
            _selectedIndex = value;
            if(value==0){
              Navigator.pushNamed(context, '/');
            }else if(value==1){
              Navigator.pushNamed(context, '/segundo');
            }
            else if(value==2){
              Navigator.pushNamed(context, '/tercero');
            }else if(value==3){
              Navigator.pushNamed(context, '/cuarto');
            }
          });
        },
      ),
    );
  }

}