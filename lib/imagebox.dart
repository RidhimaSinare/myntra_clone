import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myntra_clone/insider_page.dart';

class ImageBox extends StatelessWidget {
  String imageaddress;
  String heading;
  String firstline;
  String secondline;
  Color colour;

  ImageBox(
      {required this.imageaddress,
      required this.heading,
      required this.firstline,
      required this.secondline,
      required this.colour});

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.85,
        height: MediaQuery.of(context).size.height * 0.23,
        child: Padding(
          padding: const EdgeInsets.only(left: 27.0, bottom: 10.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  heading,
                  style: TextStyle(
                      fontSize: 20,
                      overflow: TextOverflow.clip,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Text(
                  firstline,
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
                Text(
                  secondline,
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shadowColor: Colors.transparent,
                        fixedSize: Size(120, 50),
                        backgroundColor: Colors.transparent,
                        padding: EdgeInsets.only(left: 3)),
                    onPressed: () {
                      Navigator.pushNamed(context, 'insider');
                    },
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Enter Store',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: colour),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                          size: 20.0,
                          semanticLabel:
                              'Text to announce in accessibility modes',
                        ),
                      ],
                    ))
              ]),
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                fit: BoxFit.cover, image: NetworkImage(imageaddress))),
      ),
    );
  }
}
