import 'package:flutter/material.dart';
import 'package:site_pessoal/constants.dart';

class GlassContent extends StatelessWidget {
  const GlassContent({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    double fontSize = size.width < 550 ? 70 : 100;

    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding * 2),
        constraints:
            BoxConstraints(maxWidth: 1110, maxHeight: size.height * .5),
        width: double.infinity,
        color: Colors.transparent,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Jefferson \nPessoa",
              style: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                height: 1.2,
              ),
            ),
            Text(
              "Mobile Developer",
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(color: Colors.grey),
            ),
            Text(
              "Ceará-Brasil",
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}
