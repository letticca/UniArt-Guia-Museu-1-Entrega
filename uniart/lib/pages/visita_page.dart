import 'package:flutter/material.dart';
import 'package:guia_museu/components/customDrawer.dart';
import 'package:guia_museu/components/calendar.dart';

class marcarVisita extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xff327EF0),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Agende sua visita",
          style: TextStyle(fontSize: 30),
        ),
      ),
      drawer: CustomDrawer(),

      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Center(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                 height: screenHeight * 0.20,
                  width: screenWidth * 0.77,
                child: Column(
                  children: [
                      SizedBox(height: 10),
                      const Text("Entrada gratuita", style: TextStyle(fontSize: 16)),
                      SizedBox(height: 10),
                      const Text("Horario de funcionamento", style: TextStyle(fontSize: 16)), 
                        SizedBox(height: 10),
                      const Text("Terça a Sexta das 9h - 19h", style: TextStyle(fontSize: 16)),
                        SizedBox(height: 10),
                      const Text("Sabado e Domingo 12h-18h", style: TextStyle(fontSize: 16)),
                  ]
                )
              ),
              SizedBox(height: 80),       
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      ListTile(
                        leading: Icon(Icons.accessibility_new, color: Color(0xff327EF0)),
                        title: Text("Agendar visita com interprete de libras"),
                        onTap: () {
                          // Navigate to DatePickerApp screen
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => DatePickerApp()),
                          );
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.translate, color: Color(0xff327EF0)),
                        title: Text("Agendar visita com guia bilingue"),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => DatePickerApp()),
                          );
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.person_pin, color: Color(0xff327EF0)),
                        title: Text("Agendar visita com guia"),
                        onTap: () {
                          // Navigate to DatePickerApp screen
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => DatePickerApp()),
                          );
                        },
                      ),
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