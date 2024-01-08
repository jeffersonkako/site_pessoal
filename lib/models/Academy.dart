import 'package:flutter/material.dart';

class Academy {
  final String name, img;
  final int id;
  final Color color;
  final List<ReviewSection> reviewSections;
  final String urlCertificate;
  final String urlSite;

  Academy({
    required this.id,
    required this.name,
    required this.img,
    required this.color,
    required this.reviewSections,
    required this.urlCertificate,
    required this.urlSite,
  });
}

class ReviewSection {
  final String title;
  final String content;

  ReviewSection({required this.title, required this.content});
}

// Lista de academias de demonstração
List<Academy> academys = [
  Academy(
    id: 1,
    name: "Universidade Estacio de Sá",
    img: "assets/images/estacio.png",
    color: const Color.fromARGB(255, 236, 235, 235),
    reviewSections: [
      ReviewSection(
        title: "Curso: ",
        content: "Desenvolvimento Full Stack",
      ),
      ReviewSection(
        title: "Tecnologias: ",
        content:
            "HTML, CSS, JavaScript, TypeScript, React, Next, Bootstrap, TailWind, NextJs, C#, Python, Flutter, React Native, Git",
      ),
    ],
    urlSite: "https://estacio.br/cursos/graduacao/desenvolvimento-full-stack",
    urlCertificate:
        "https://drive.google.com/file/d/1li0o3jw76PUI-ISWJnLP-w8VAoL9sVPT/view",
  ),
  Academy(
    id: 2,
    name: "OneBitCode",
    img: "assets/images/onebitcode.png",
    color: const Color.fromARGB(255, 236, 235, 235),
    reviewSections: [
      ReviewSection(
        title: "Curso: ",
        content: "Full Stack JavaScript",
      ),
      ReviewSection(
        title: "Tecnologias: ",
        content:
            "HTML, CSS, JavaScript, TypeScript, React, NextJs, NodeJs, Express, Tailwind, Docker, Git",
      ),
    ],
    urlSite: "https://onebitcode.com/",
    urlCertificate: "https://jefferson.dev",
  ),
  Academy(
    id: 3,
    name: "Alura",
    img: "assets/images/alura.png",
    color: const Color.fromARGB(255, 236, 235, 235),
    reviewSections: [
      ReviewSection(
        title: "Curso: ",
        content: "Mobile Developer React Native",
      ),
      ReviewSection(
        title: "Tecnologias: ",
        content: "Js, React Native, Expo, Git, GitHub",
      ),
    ],
    urlSite: "https://www.alura.com.br/formacao-react-native",
    urlCertificate: "https://jefferson.dev",
  ),
  Academy(
    id: 4,
    name: "EBAC",
    img: "assets/images/ebac.png",
    color: const Color.fromARGB(255, 236, 235, 235),
    reviewSections: [
      ReviewSection(
        title: "Curso: ",
        content: "Engenheiro Front-End",
      ),
      ReviewSection(
        title: "Tecnologias: ",
        content: "Html, Css, JavaScript, React, Sass, JQuery, Ajax, SQL",
      ),
    ],
    urlSite: "https://ebaconline.com.br/front-end-profession",
    urlCertificate: "https://jefferson.dev",
  ),
  Academy(
    id: 5,
    name: "Academia do Flutter",
    img: "assets/images/adf.jpeg",
    color: const Color.fromARGB(255, 236, 235, 235),
    reviewSections: [
      ReviewSection(
        title: "Curso: ",
        content: "Formação Flutter",
      ),
      ReviewSection(
        title: "Tecnologias: ",
        content: "Dart, Flutter, Firebase, Bloc, MobX, AWS, Git",
      ),
    ],
    urlSite: "https://novo.academiadoflutter.com.br/",
    urlCertificate: "https://jefferson.dev",
  ),
  Academy(
    id: 6,
    name: "Origamid",
    img: "assets/images/origamid.png",
    color: const Color.fromARGB(255, 236, 235, 235),
    reviewSections: [
      ReviewSection(
        title: "Curso: ",
        content: "Front-end UI/UX",
      ),
      ReviewSection(
        title: "Tecnologias: ",
        content:
            "Html, Css, JavaScript, TypeScript, React, Nextjs, Tailwind, Git, Figma, Adobe XD",
      ),
    ],
    urlSite: "https://www.origamid.com/",
    urlCertificate: "https://jefferson.dev",
  ),
];
