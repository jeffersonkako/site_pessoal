import 'package:flutter/material.dart';
import 'package:site_pessoal/components/section_title.dart';
import 'package:site_pessoal/constants.dart';
import 'package:site_pessoal/models/Tech.dart';

import 'components/tech_card.dart';

class TechSection extends StatelessWidget {
  const TechSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      constraints: const BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          const SectionTitle(
            color: Color(0xFFFF0000),
            title: "Tecnologias",
            subTitle: "Minhas principais tecnologias",
          ),
          Wrap(
            alignment: WrapAlignment.spaceBetween,
            spacing: 16.0, // Espaçamento horizontal entre os elementos
            runSpacing: 1, // Espaçamento vertical entre as linhas
            children:
                List.generate(techs.length, (index) => TechCard(index: index)),
          ),
        ],
      ),
    );
  }
}
