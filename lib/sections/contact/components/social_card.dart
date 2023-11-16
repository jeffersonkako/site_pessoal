import 'package:flutter/material.dart';

import '../../../constants.dart';

class SocialCard extends StatefulWidget {
  const SocialCard({
    Key? key,
    required this.iconSrc,
    required this.color,
    required this.press,
  }) : super(key: key);

  final String iconSrc;
  final Color color;
  final Function()? press;

  @override
  _SocalCardState createState() => _SocalCardState();
}

class _SocalCardState extends State<SocialCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: InkWell(
        onTap: widget.press,
        onHover: (value) {
          setState(() {
            isHover = value;
          });
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          padding: const EdgeInsets.symmetric(
            vertical: 2,
            horizontal: 2,
          ),
          decoration: BoxDecoration(
            color: widget.color,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [if (isHover) kDefaultCardShadow],
          ),
          child: Row(
            mainAxisAlignment:
                MainAxisAlignment.center, // Centralize horizontalmente
            crossAxisAlignment:
                CrossAxisAlignment.center, // Centralize verticalmente
            children: [
              Image.asset(
                widget.iconSrc,
                height: 80,
                width: 80,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
