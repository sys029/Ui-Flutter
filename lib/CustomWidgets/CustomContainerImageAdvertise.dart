import 'dart:ui';

import 'package:flutter/material.dart';

class CustomContainerImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 500,
      color: Color.fromRGBO(255, 255, 255, 1),
      child: Stack(
        children: <Widget>[
          Positioned(
              top: 20,
              left: 120,
              child: Text('ADVERTISEMENT',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    height: 1,
                    letterSpacing: 1.5,
                  ))),
          Positioned(
              top: 35,
              bottom: 30,
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 410,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                        color: Colors.white,
                        image: DecorationImage(
                            image:
                                AssetImage('assets/images/addlighthouse.png'),
                            fit: BoxFit.contain)),
                  )
                ],
              )),
          Positioned(
            top: 215,
            left: 150,
            child: Container(
              width: 90,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
                color: Color.fromRGBO(255, 255, 255, 1.0),
              ),
            ),
          ),
          Positioned(
              top: 223,
              left: 160,
              child: Text(
                'GET NOW',
                style: TextStyle(
                    fontSize: 12,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold),
              )),
          Positioned(
              top: 205,
              left: 200,
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_forward),
                iconSize: 18,
                color: Colors.black87,
              ))
        ],
      ),
    );
  }
}
