import 'package:flutter/material.dart';

import '../constants.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    this.imageSrc,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String? imageSrc, text;
  final Function()? press;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black, // Define a cor de fundo
        padding: const EdgeInsets.symmetric(
          vertical: kDefaultPadding,
          horizontal: kDefaultPadding,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      ),
      onPressed: press,
      child: Row(
        children: [
          Image.asset(imageSrc!, height: 30),
          const SizedBox(width: kDefaultPadding),
          Text(text!, style: const TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}
