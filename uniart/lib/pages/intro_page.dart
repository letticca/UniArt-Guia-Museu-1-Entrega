import 'package:flutter/material.dart';
import 'package:guia_museu/components/myButton.dart';
//import 'package:guia_museu/pages/exposicao_page.dart';
import 'package:guia_museu/pages/Obras_page.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    void nextPage() {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Obra()),
      );
    }

    return Scaffold(
      backgroundColor: Color(0xff327EF0),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          height: screenHeight * 1.2,
          width: screenWidth * 1.8,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("imagens/UniforLogo.png",
                height: 100,
                width: 100,
              ),
              const Text(
                "Espaço Cultural Unifor",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(height: 15),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff327EF0), // background color
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                ),
                onPressed: () {
                  nextPage();
                },
                child: const Text('Entrar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}