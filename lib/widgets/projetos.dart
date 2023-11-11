import 'package:flutter/material.dart';
import 'package:portfolio/themes/textsconstraints.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: MediaQuery.of(context).size.width*0.75,
      padding: const EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 50,
                height: 5,
                color: Colors.amber.shade700,
              ),
              const SizedBox(width: 10),
              const Text('Meus Projetos', style: TextConstraints.textoAboutMe,)
            ],
          ),
          Container(
            child: Row(              
              children: [
                Expanded(
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.topCenter,
                        child: const Text('LinkCoders', style: TextConstraints.textotitleProjeto,)
                      ),
                      const SizedBox(height: 20,),
                      const Padding(
                        padding: EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 8),
                        child: Text('Esse projeto possibillita que pessoas busquem ajuda para desenvolverem projetos pessoais/coletivos. O app irá permitir que o usuário selecione ou publique sua ideia/projeto dentro do nosso aplicativo e que monte sua equipe para terminar seu projeto.', style: TextConstraints.textoProjeto,),
                      ),
                      ],
                    )
                  ),
                Expanded(
                  child: Container(
                    child: Expanded(child: Image.asset("assets/images/LinkCoders.png", scale: 2,))
                  ),
                )
              ],
            ),
          ) 
        ],
      ),
    );
  }
}