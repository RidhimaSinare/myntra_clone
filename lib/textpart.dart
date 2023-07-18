import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:auto_size_text/auto_size_text.dart';

class TextPart extends StatelessWidget {
  String text1;
  String text2;
  IconData icon;
  TextPart({required this.icon, required this.text1, required this.text2});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 15,
          color: Colors.white,
        ),
        SizedBox(
          width: 15,
        ),
        AutoSizeText(
          text1,
          style: TextStyle(
              color: Color(0xFFFFD700),
              fontSize: 13.0,
              fontWeight: FontWeight.bold),
        ),
        AutoSizeText(
          text2,
          style: TextStyle(
              color: Colors.white, fontSize: 13.0, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

class TextBottom extends StatelessWidget {
  String text;
  TextBottom({required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          FontAwesomeIcons.circleDot,
          color: Colors.white,
          size: 8,
        ),
        SizedBox(
          width: 10,
        ),
        AutoSizeText(
          text,
          overflow: TextOverflow.ellipsis,
          softWrap: true,
          style: TextStyle(fontSize: 13, color: Colors.white),
        )
      ],
    );
  }
}
