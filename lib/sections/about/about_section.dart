import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:site_pessoal/components/default_button.dart';
import 'package:site_pessoal/constants.dart';

import 'components/about_section_text.dart';
import 'components/about_text_with_sign.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: const BoxConstraints(maxWidth: 1110),
      child: LayoutBuilder(
        builder: (context, constraints) {
          bool showAboutText = constraints.maxWidth > 800;

          return Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if (showAboutText) const AboutText(),
                  const Expanded(
                    child: AboutSectionText(
                      text:
                          "» Desenvolvedor front-end com experiência em desenvolvimento de aplicações web e mobile.\n» Atualmente trabalhando na área mobile com Dart e Flutter, porem tenho experiência em JavaScript, ReactJS, React Native, NextJs, NodeJS, Tailwind, entre outras tecnologias. \n» Minhas principais ferramentas de trabalho são VS Code, Figma, Git, GitHub e Docker. \n» Tenho experiência em GitFlow e em metodologias ágeis, como Scrum e Kanban. \n» Sou apaixonado por tecnologia, em um processo de transição de carreira, estou sempre buscando aprender novas tecnologias e aprimorar meus conhecimentos.",
                    ),
                  ),
                ],
              ),
              const SizedBox(height: kDefaultPadding * 3),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DefaultButton(
                    imageSrc: "assets/images/download.png",
                    text: "Download CV",
                    press: () {
                      openUrlInNewTab(
                          "https://drive.google.com/uc?export=download&id=17kXIUH0GVGDuSRIy12eFTQ6kqj2aQc0g");
                    },
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}

void openUrlInNewTab(String url) {
  html.window.open(url, '_blank');
}
