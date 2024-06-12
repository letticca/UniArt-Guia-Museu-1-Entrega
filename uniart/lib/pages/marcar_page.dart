import 'package:flutter/material.dart';
import 'package:guia_museu/pages/detalhesObra_page.dart';
import 'package:guia_museu/components/calendar.dart';

class marcarCalendario extends StatelessWidget {
  const marcarCalendario({super.key});

  @override
  Widget build (BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      body: DatePickerApp(),
    );
  }
}