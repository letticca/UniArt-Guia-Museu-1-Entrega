import 'package:flutter/material.dart';
import 'package:guia_museu/components/customDrawer.dart';
import 'package:guia_museu/components/myButton.dart';
import 'package:guia_museu/pages/settings_page.dart';
import 'package:guia_museu/pages/Obras_page.dart';

class detalhesObra extends StatefulWidget {
  final String nome;
  final String autor;
  final String descricao;
  final String imagem;

  detalhesObra({
    required this.nome,
    required this.autor,
    required this.descricao,
    required this.imagem,
  });

  @override
  _DetalhesObraState createState() => _DetalhesObraState();
}

class _DetalhesObraState extends State<detalhesObra> with TickerProviderStateMixin {
  bool isPlay = false;
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xff327EF0),
      appBar: AppBar(
        title: Text(
          "Sobre a obra",
          style: TextStyle(fontSize: 24),
        ),
      ),
      drawer: CustomDrawer(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Container com a foto da obra
            Container(
              width: screenWidth * 1.2,
              height: screenWidth * 0.85,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                  ),
                ],
                image: DecorationImage(
                  image: AssetImage(widget.imagem),
                ),
              ),
            ),
            SizedBox(height: 20),
            //Container com as informações da obra
            Container(
              width: screenWidth * 0.85,
              height: screenWidth * 0.75,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text(
                      widget.nome,
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      widget.autor,
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                      textAlign: TextAlign.center,
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        //TODO: implementar ação do botão
                      },
                      child: GestureDetector(
                        onTap: () {
                          if (isPlay == false) {
                            _controller.forward();
                            isPlay = true;
                          } else {
                            _controller.reverse();
                            isPlay = false;
                          }
                        },
                        child: AnimatedIcon(
                          icon: AnimatedIcons.play_pause,
                          progress: _controller,
                          size: 10,
                        ),
                      ),
                    ),
                    Text(
                      widget.descricao,
                      style: TextStyle(fontSize: 15),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}