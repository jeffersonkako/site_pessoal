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
    title: "Dart",
    image: "assets/images/dart.png",
    color: const Color.fromARGB(255, 236, 235, 235),
    url: "https://dart.dev/",
  ),
  Tech(
    id: 2,
    title: "Flutter",
    image: "assets/images/flutter.png",
    color: const Color.fromARGB(255, 236, 235, 235),
    url: "https://flutter.dev/",
  ),
  Tech(
    id: 3,
    title: "Firebase",
    image: "assets/images/firebase.png",
    color: const Color.fromARGB(255, 236, 235, 235),
    url: "https://firebase.google.com/",
  ),
  Tech(
    id: 4,
    title: "React Native",
    image: "assets/images/react.png",
    color: const Color.fromARGB(255, 236, 235, 235),
    url: "https://reactnative.dev/",
  ),
  Tech(
    id: 5,
    title: "JavaScript",
    image: "assets/images/js.png",
    color: const Color.fromARGB(255, 236, 235, 235),
    url: "https://www.javascript.com/",
  ),
  Tech(
    id: 6,
    title: "TypeScript",
    image: "assets/images/ts.png",
    color: const Color.fromARGB(255, 236, 235, 235),
    url: "https://www.typescriptlang.org/",
  ),
  
  Tech(
    id: 7,
    title: "NextJs",
    image: "assets/images/nextjs.png",
    color: const Color.fromARGB(255, 236, 235, 235),
    url: "https://nextjs.org/",
  ),
  Tech(
    id: 8,
    title: "NodeJs",
    image: "assets/images/node.png",
    color: const Color.fromARGB(255, 236, 235, 235),
    url: "https://nodejs.org/",
  ),
  
];
