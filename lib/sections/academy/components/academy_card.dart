import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:site_pessoal/components/default_button.dart';
import 'package:site_pessoal/models/Academy.dart';

import '../../../constants.dart';

class AcademyCard extends StatefulWidget {
  const AcademyCard({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  _AcademyCardState createState() => _AcademyCardState();
}

class _AcademyCardState extends State<AcademyCard> {
  Duration duration = const Duration(milliseconds: 200);
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    final academy = academys[widget.index];
    return InkWell(
      onTap: () {
        final url = academys[widget.index].urlSite;
        openUrlInNewTab(url);
      },
      hoverColor: Colors.transparent,
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      child: AnimatedContainer(
        duration: duration,
        margin: const EdgeInsets.only(top: kDefaultPadding * 3),
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        height: 350,
        width: 350,
        decoration: BoxDecoration(
          color: academy.color,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [if (isHover) kDefaultCardShadow],
        ),
        child: Column(
          children: [
            Transform.translate(
              offset: const Offset(0, -55),
              child: AnimatedContainer(
                duration: duration,
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [if (!isHover) kDefaultCardShadow],
                  image: DecorationImage(
                    image: AssetImage(academy.img),
                  ),
                ),
              ),
            ),
            Text(
              academy.name,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: academy.reviewSections.map((section) {
                return RichText(
                  text: TextSpan(
                    style: const TextStyle(
                      color: kTextColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      fontStyle: FontStyle.normal,
                      height: 1.3,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: section.title,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: section.content),
                    ],
                  ),
                );
              }).toList(),
            ),
            const Spacer(),
            DefaultButton(
              imageSrc: "assets/images/download.png",
              text: "Certificado",
              press: () {
                final url = academys[widget.index].urlCertificate;
                openUrlInNewTab(url); // Função para abrir a URL em nova aba
              },
            ),
            const SizedBox(height: kDefaultPadding * 2),
          ],
        ),
      ),
    );
  }
}

void openUrlInNewTab(String url) {
  html.window.open(url, '_blank');
}
