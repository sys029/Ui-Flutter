import 'package:flutter/material.dart';
import 'package:task_ui_design/CustomWidgets/ActionCard.dart';

class CustomContainerSecond extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1125,
      height: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
          bottomLeft: Radius.circular(0),
          bottomRight: Radius.circular(0),
        ),
        boxShadow: [
          BoxShadow(
              color: Color.fromRGBO(90, 111, 142, 0.1),
              offset: Offset(0, -18),
              blurRadius: 50)
        ],
        color: Color.fromRGBO(255, 255, 255, 1),
      ),
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(15),
            child: Container(
              width: 45,
              height: 5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(80),
                  topRight: Radius.circular(80),
                  bottomLeft: Radius.circular(80),
                  bottomRight: Radius.circular(80),
                ),
                color: Color.fromRGBO(215, 218, 234, 1),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 25),
              child: Text(
                'Latest News',
                style: TextStyle(
                    color: Color.fromRGBO(14, 24, 35, 1),
                    fontFamily: "Montserrat",
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    height: 1),
              ),
            ),
          ),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 15.0),
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ActionCard(
                      buttonText: 'Request Now',
                      icon: 'assets/images/news.png',
                      subTitle: 'License is necessary to join the events',
                      title: 'Request for your first license'),
                  ActionCard(
                      buttonText: 'Add new Member',
                      icon: 'assets/images/personplus.png',
                      title: 'Add family members to your \nmembership')
                ],
              ))
        ],
      ),
    );
  }
}
