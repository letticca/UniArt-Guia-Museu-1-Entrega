import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  String texto;
  void Function() funcaoChamada;
  MyButton(this.texto, this.funcaoChamada);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: SizedBox(
        height: 30,
        child: ElevatedButton(
          child: Text(texto),
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.blue,
          ),
          onPressed: funcaoChamada,
        ),
      ),
    );
  }
}