import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:guia_museu/pages/detalhesObra_page.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:guia_museu/pages/detalhesObra_page.dart';

class card extends StatelessWidget {
  final String imagem;
  final String nomeObra;
  final String nomeAutor;
  final VoidCallback onTap;

  card({
    required this.imagem,
    required this.nomeObra,
    required this.nomeAutor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

  

    return Center(
      child: Container(
        height: screenHeight * 0.18,
        width: screenWidth * 0.77,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(40),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Container(
                height: 100,
                width: 100,
                child: Image.asset(
                  imagem,
                  height: 70,
                  width: 70,
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(7),
                    child: Text(
                      nomeObra,
                      style: TextStyle(fontSize: 13),
                    ),
                  ),
                    Padding(
                    padding: const EdgeInsets.all(7),
                    child: Text(
                      nomeAutor,
                      style: TextStyle(fontSize: 13),
                    ),
                  ),
                  SizedBox(height: 8, width: 8),
                  Row(
                    children: [
                      Text(
                        'Ver mais',
                        style: TextStyle(fontSize: 13),
                      ),
                      IconButton(
                        onPressed: onTap,
                        icon: const Icon(Icons.add_circle),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}