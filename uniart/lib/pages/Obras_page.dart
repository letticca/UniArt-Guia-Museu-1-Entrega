import 'package:flutter/material.dart';
import 'package:guia_museu/components/customDrawer.dart';
//import 'package:guia_museu/components/gridObra.dart';
import 'package:guia_museu/pages/detalhesObra_page.dart';
//import 'package: guia_museu/components/gridObra.dart';
import 'package:guia_museu/components/card.dart';

class Obra extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff327EF0),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Image.asset("imagens/UniforLogo.png", height: 30, width: 30),
            SizedBox(width: 15),
            Text('Exposições', style: TextStyle(fontSize: 30)),
          ],
        ),
      ),
      drawer: CustomDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView( // Add this widget
          child: Column(
            children: [
              card(
                imagem: 'imagens/carcara.jpg',
                nomeObra: 'Carcara',
                nomeAutor: "Aldemir Martins",
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => detalhesObra(
                        nome: "Carcará",
                        autor: "Aldemir Martins",
                        descricao: "Composição nos tons amarelo, preto e vermelho. Textura lisa. Ave Carcará em tons neutros em um fundo amarelo, os olhos são representados por um ponto vermelho e seu corpo por pinceladas tracejadas",
                        imagem: 'imagens/carcara.jpg',
                    )),
                  );
                },
              ),
              SizedBox(height: 8, width: 8),
              card(
                imagem: 'imagens/jangada_carcaca.jpeg',
                nomeObra: 'Jangada e Carcaça',
                nomeAutor: "Candido Portinari",
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => 
                      detalhesObra(
                          nome: "Jangada e Carcaça",
                          autor: " Candido Portinari",
                          descricao: "Composição nos tons amarelos, azuis, terras, cinzas, branco, vermelho e preto. Textura lisa. Paisagem noturna com jangada, espantalho e figuras, vendo-se no céu o Cruzeiro do Sul e as Três Marias. No centro, jangada com a vela caída, branca com pontinhos vermelhos.",
                          imagem: 'imagens/jangada_carcaca.jpeg',
                      )
                    ),
                  );
                },
              ),
              SizedBox(height: 8, width: 8),
              card(
                imagem: 'imagens/bosque_primavera.jpeg',
                nomeObra: 'Bosque na Primavera',
                nomeAutor: "Eliseu Visconti",
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => 
                      detalhesObra(
                          nome: "Bosque na Primavera",
                          autor: " Eliseu Visconti",
                          descricao: "Composição nos tons verde, rosa, marrom e branco. Textura lisa. Paisagem florescente, com folhagens verdes e flores rosas envolta de árvores, representando um bosque na a primavera.",
                          imagem: 'imagens/bosque_primavera.jpeg',
                      )
                    ),
                  );
                },
              ),
               SizedBox(height: 8, width: 8),
              card(
                imagem: 'imagens/UniforLogo.png',
                nomeObra: 'Nome da Obra',
                nomeAutor: "Nome do autor",
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => 
                      detalhesObra(
                          nome: "Nome da Obra",
                          autor: " Nome do autor",
                          descricao: "Descrição da obra",
                          imagem: 'imagens/UniforLogo.png',
                      )
                    ),
                  );
                },
              ),
               SizedBox(height: 8, width: 8),
              card(
                imagem: 'imagens/UniforLogo.png',
                nomeObra: 'Nome da Obra',
                nomeAutor: "Nome do autor",
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => 
                      detalhesObra(
                          nome: "Nome da Obra",
                          autor: " Nome do autor",
                          descricao: "Descrição da obra",
                          imagem: 'imagens/UniforLogo.png',
                      )
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}