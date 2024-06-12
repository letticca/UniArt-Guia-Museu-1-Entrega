import 'package:flutter/material.dart';
import 'package:guia_museu/components/customDrawer.dart';

class SettingsPage extends StatefulWidget {
  @override
  SettingsPageState createState() => SettingsPageState();
}

class SettingsPageState extends State<SettingsPage> {
  double _zoomLevel = 100;
  String? _language = 'Português'; // Alteração do tipo para String?
  bool _audioDescription = false;
  double _fontSize = 16; // Medium font size

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(  backgroundColor: Colors.white,
        title: Text( 'Configurações', style:TextStyle(fontSize:30)),
      ),
      drawer: CustomDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Zoom',style: TextStyle(fontSize: 18)),
                Slider(
                  value: _zoomLevel,
                  min: 50,
                  max: 200,
                  divisions: 15,
                  label: '${_zoomLevel.round()}%',
                  onChanged: (value) {
                    setState(() {
                      _zoomLevel = value;
                    });
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Idioma',style: TextStyle(fontSize: 20)),
                DropdownButton(
                  value: _language,
                  items: [
                    DropdownMenuItem(
                      child: Text('Português',style: TextStyle(fontSize: 18)),
                      value: 'Português',
                    ),
                    DropdownMenuItem(
                      child: Text('English', style: TextStyle(fontSize: 18)),
                      value: 'English',
                    ),
                  ],
                  onChanged: (value) {
                    setState(() {
                      _language = value as String?; 
                    });
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Tamanho da fonte', style: TextStyle(fontSize: 18)),
                Slider(
                  value: _fontSize,
                  min: 12,
                  max: 24,
                  divisions: 6,
                  label: '${_fontSize.round()}',
                  onChanged: (value) {
                    setState(() {
                      _fontSize = value;
                    });
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Audiodescrição do texto',style: TextStyle(fontSize: 18)),
                Switch(
                  value: _audioDescription,
                  onChanged: (value) {
                    setState(() {
                      _audioDescription = value;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}