import 'package:flutter/material.dart';

class PersonPic extends StatelessWidget {
  const PersonPic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var imgSize = MediaQuery.of(context).size.width * 0.8;
    return Container(
      constraints: const BoxConstraints(maxWidth: 639, maxHeight: 860),
      child: Image.asset("assets/images/person.png", width: imgSize),
    );
  }
}
