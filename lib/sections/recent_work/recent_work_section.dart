import 'package:flutter/material.dart';
import 'package:site_pessoal/components/contact_card.dart';
import 'package:site_pessoal/components/section_title.dart';
import 'package:site_pessoal/constants.dart';
import 'package:site_pessoal/models/RecentWork.dart';
import 'package:site_pessoal/sections/recent_work/components/recent_work_card.dart';

class RecentWorkSection extends StatelessWidget {
  const RecentWorkSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isScreenLarge = screenWidth > 600;

    return Container(
      margin: const EdgeInsets.only(top: kDefaultPadding * 6),
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 255, 255).withOpacity(0.1),
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/recent_work_bg.png"),
        ),
      ),
      child: Column(
        children: [
          if (isScreenLarge)
            Transform.translate(
              offset: const Offset(0, -80),
              child: const ContactCard(),
            ),
          const SectionTitle(
            title: "Portfólio",
            subTitle: "Meus trabalhos recentes",
            color: Color(0xFFFFB100),
          ),
          const SizedBox(height: kDefaultPadding * 1.5),
          SizedBox(
            width: 1110,
            child: Wrap(
              spacing: kDefaultPadding,
              runSpacing: kDefaultPadding * 2,
              children: List.generate(
                recentWorks.length,
                (index) => RecentWorkCard(index: index, press: () {}),
              ),
            ),
          ),
          const SizedBox(height: kDefaultPadding * 2),
          const Text(
            "Portfólio em construção!\nPara mais detalhes, acesse meu GitHub",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: kDefaultPadding * 2),
        ],
      ),
    );
  }
}
