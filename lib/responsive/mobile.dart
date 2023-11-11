import 'package:flutter/material.dart';
import 'package:portfolio/themes/textsconstraints.dart';
import 'package:portfolio/widgets/aboutme_widget.dart';
import 'package:portfolio/widgets/appbar_widget.dart';
import 'package:portfolio/widgets/projetos.dart';

class MyMobile extends StatelessWidget {
  const MyMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Column(
        children: [
            Container(
              color: Colors.grey.shade700,
              child: Center(
                child: Stack(
                  children: [
                    Center(child: Image.asset("assets/images/vitorv.png", scale: 4, fit: BoxFit.cover)),
                    Center(
                      child: Container(
                        padding: const EdgeInsets.only(top: 100),
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(text: 'Olá eu sou um, ', style: TextStyle(color: Colors.grey[850], fontSize: 20, fontWeight: FontWeight.bold)),
                              const TextSpan(text: 'Programador e este é ', style: TextConstraints.textoHello2),
                              TextSpan(text: 'meu Portfólio ', style: TextStyle(color: Colors.grey[850], fontSize: 20, fontWeight: FontWeight.bold)),
                            ]
                          )
                        )
                      ),
                    ),
                  ],
                )
              ),
            ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: ListView(
                      children: const [
                        AboutMe(),
                        MyProjects(),
                        // Certificados()
                      ],
                    )
                  ),
                ],
              ),
            ), 
          )
        ],
      ),
    );
  }
}