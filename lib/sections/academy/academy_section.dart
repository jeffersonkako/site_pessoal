import 'package:flutter/material.dart';
import 'package:site_pessoal/components/section_title.dart';
import 'package:site_pessoal/constants.dart';
import 'package:site_pessoal/models/Academy.dart';

import 'components/academy_card.dart';

class AcademySection extends StatelessWidget {
  const AcademySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2.5),
      constraints: const BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          const SectionTitle(
            title: "Formação",
            subTitle: "Minha formação e principais cursos",
            color: Color(0xFF00B1FF),
          ),
          const SizedBox(height: kDefaultPadding),
          Wrap(
            alignment: WrapAlignment.spaceBetween,
            spacing: 16,
            runSpacing: 16,
            children: List.generate(
              academys.length,
              (index) => AcademyCard(index: index),
            ),
          ),
          const SizedBox(height: kDefaultPadding * 2),
        ],
      ),
    );
  }
}
