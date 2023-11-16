import 'package:flutter/material.dart';

class Tech {
  final int id;
  final String title, image, url;
  final Color color;

  Tech(
      {required this.id,
      required this.title,
      required this.image,
      required this.url,
      required this.color});
}

List<Tech> techs = [
  Tech(
    id: 1,
    title: "JavaScript",
    image: "assets/images/js.png",
    color: const Color.fromARGB(255, 236, 235, 235),
    url: "https://www.javascript.com/",
  ),
  Tech(
    id: 1,
    title: "TypeScript",
    image: "assets/images/ts.png",
    color: const Color.fromARGB(255, 236, 235, 235),
    url: "https://www.typescriptlang.org/",
  ),
  Tech(
    id: 2,
    title: "React",
    image: "assets/images/react.png",
    color: const Color.fromARGB(255, 236, 235, 235),
    url: "https://react.dev/",
  ),
  Tech(
    id: 3,
    title: "NextJs",
    image: "assets/images/nextjs.png",
    color: const Color.fromARGB(255, 236, 235, 235),
    url: "https://nextjs.org/",
  ),
  Tech(
    id: 4,
    title: "NodeJs",
    image: "assets/images/node.png",
    color: const Color.fromARGB(255, 236, 235, 235),
    url: "https://nodejs.org/",
  ),
    Tech(
    id: 4,
    title: "Dart",
    image: "assets/images/dart.png",
    color: const Color.fromARGB(255, 236, 235, 235),
    url: "https://dart.dev/",
  ),
  Tech(
    id: 5,
    title: "Flutter",
    image: "assets/images/flutter.png",
    color: const Color.fromARGB(255, 236, 235, 235),
    url: "https://flutter.dev/",
  ),
  Tech(
    id: 7,
    title: "Git",
    image: "assets/images/git.png",
    color: const Color.fromARGB(255, 236, 235, 235),
    url: "https://git-scm.com/",
  ),
];
