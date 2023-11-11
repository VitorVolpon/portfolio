import 'package:flutter/material.dart';
import 'package:portfolio/themes/textsconstraints.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: MediaQuery.of(context).size.width*0.75,
      alignment: Alignment.center,
      padding: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const SizedBox(width: 15),
              Container(
                width: 50,
                height: 5,
                color: Colors.amber.shade700,
              ),
              const SizedBox(width: 10,),
              const Center(child: Text("About Me", style: TextConstraints.textoAboutMe)),
            ],
          ),
          const SizedBox(height: 10),         
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              // color: const Color.fromRGBO(213, 186, 152, 0.1)
            ),
              child: const Padding(
              padding: EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 20),
              child: Text('Sou um aluno de 20 anos, atualmente no terceiro semestre do curso de Ciência da Computação do Instituto de Tecnologia Mauá. Minha dedicação e entusiasmo pelo campo refletem-se em um comprometimento notável com os estudos. Participativo em projetos e grupos de estudo, destaco-me não apenas por minhas habilidades acadêmicas, mas também por minha capacidade de colaboração e liderança, prometendo um futuro promissor como profissional de tecnologia.'),
            ),
          ),
        ],
      ),
    );
  }
}
