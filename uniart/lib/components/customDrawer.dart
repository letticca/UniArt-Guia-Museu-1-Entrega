  import 'package:flutter/material.dart';
  //paginas
  import 'package:guia_museu/pages/settings_page.dart';
  import 'package:guia_museu/pages/Obras_page.dart';
  import 'package:guia_museu/pages/visita_page.dart';



  class CustomDrawer extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return Drawer( 
        backgroundColor: Colors.white,
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          children: [
            Container(
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.home, color: Color(0xff327EF0)),
                    title: Text("Inicial", style: TextStyle(color: Color(0xff327EF0))),
                    onTap: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Obra()));
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.settings, color: Color(0xff327EF0)),
                    title: Text("Configurações", style: TextStyle(color: Color(0xff327EF0))),
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => SettingsPage()),
                      );
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.calendar_month, color: Color(0xff327EF0)),
                    title: Text('Agendar Visita', style: TextStyle(color: Color(0xff327EF0))),
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => marcarVisita()),
                      );
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }
  }