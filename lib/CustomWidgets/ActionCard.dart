import 'package:flutter/material.dart';

class ActionCard extends StatelessWidget {
  final String icon;
  final String title;
  final String subTitle;
  final String buttonText;

  ActionCard(
      {@required this.buttonText,
      @required this.icon,
      this.subTitle,
      @required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      child: Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        elevation: 0,
        color: Color.fromRGBO(217, 233, 252, 1.0),
        child: Stack(
          children: <Widget>[
            Positioned(
                left: 20,
                top: 18,
                child: SizedBox(
                    child: Image(
                  image: AssetImage(icon),
                  height: 15,
                  width: 15,
                ))),
            Positioned(
              left: 43,
              top: 20,
              child: Text(
                title,
                textAlign: TextAlign.justify,
                style: TextStyle(
                    color: Color.fromRGBO(50, 57, 83, 1),
                    fontFamily: "Montserrat",
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    height: 1),
              ),
            ),
            subTitle == null
                ? SizedBox()
                : Positioned(
                    left: 43,
                    top: 40,
                    child: Text(
                      subTitle,
                      style: TextStyle(
                          color: Color.fromRGBO(50, 57, 83, 1),
                          fontFamily: "Montserrat",
                          fontSize: 11,
                          fontWeight: FontWeight.normal,
                          height: 1),
                    ),
                  ),
            Positioned(
                left: 43,
                top: 55,
                child: Chip(
                  label: Text(
                    buttonText,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      height: 1,
                    ),
                  ),
                  backgroundColor: Colors.white,
                )),
          ],
        ),
      ),
    );
  }
}
