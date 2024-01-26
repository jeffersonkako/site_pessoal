import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:site_pessoal/components/section_title.dart';
import 'package:site_pessoal/constants.dart';

import 'components/social_card.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isScreenSmall = screenWidth < 500;

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 255, 255).withOpacity(0.1),
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/bg_img_2.png"),
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: kDefaultPadding),
          const SectionTitle(
            title: "Redes Sociais",
            subTitle: "Você pode me encontrar nas redes abaixo",
            color: Color(0xFF07E24A),
          ),
          isScreenSmall ? const ContactBoxWrap() : const ContactBoxRow(),
          const SizedBox(height: kDefaultPadding * 2),
          const Text(
            "© 2023 jefferson.dev",
            style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold // Defina a cor desejada
                ),
          ),
          const SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}

class ContactBoxRow extends StatelessWidget {
  const ContactBoxRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 1110),
      margin: const EdgeInsets.only(top: kDefaultPadding),
      padding: const EdgeInsets.all(kDefaultPadding),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SocialCard(
            color: const Color.fromARGB(255, 236, 235, 235),
            iconSrc: "assets/images/github.png",
            press: () {
              openUrlInNewTab("https://github.com/jeffersonponte");
            },
          ),
          const SizedBox(width: 10),
          SocialCard(
            color: const Color.fromARGB(255, 236, 235, 235),
            iconSrc: "assets/images/x.png",
            press: () {
              openUrlInNewTab("https://x.com/ojeffersonponte");
            },
          ),
          const SizedBox(width: 10), // Espaço de 10 pixels entre os SocialCard
          SocialCard(
            color: const Color.fromARGB(255, 236, 235, 235),
            iconSrc: "assets/images/instagram.png",
            press: () {
              openUrlInNewTab("https://instagram.com/ojeffersonponte");
            },
          ),
          const SizedBox(width: 10), // Espaço de 10 pixels entre os SocialCard
          SocialCard(
            color: const Color.fromARGB(255, 236, 235, 235),
            iconSrc: "assets/images/linkedin.png",
            press: () {
              openUrlInNewTab("https://www.linkedin.com/in/jeffersonponte/");
            },
          ),
        ],
      ),
    );
  }
}

class ContactBoxWrap extends StatelessWidget {
  const ContactBoxWrap({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 1110),
      margin: const EdgeInsets.only(top: kDefaultPadding),
      padding: const EdgeInsets.all(kDefaultPadding),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 8,
            runSpacing: 8,
            children: [
              SocialCard(
                color: const Color.fromARGB(255, 236, 235, 235),
                iconSrc: "assets/images/github.png",
                press: () {
                  openUrlInNewTab("https://github.com/jeffersonponte");
                },
              ),
              SocialCard(
                color: const Color.fromARGB(255, 236, 235, 235),
                iconSrc: "assets/images/x.png",
                press: () {
                  openUrlInNewTab("https://x.com/ojeffersonponte");
                },
              ),
              SocialCard(
                color: const Color.fromARGB(255, 236, 235, 235),
                iconSrc: "assets/images/instagram.png",
                press: () {
                  openUrlInNewTab("https://instagram.com/ojeffersonponte");
                },
              ),
              SocialCard(
                color: const Color.fromARGB(255, 236, 235, 235),
                iconSrc: "assets/images/linkedin.png",
                press: () {
                  openUrlInNewTab("https://www.linkedin.com/in/jeffersonponte/");
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

void openUrlInNewTab(String url) {
  html.window.open(url, '_blank');
}
