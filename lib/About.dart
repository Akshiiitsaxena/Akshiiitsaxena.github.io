import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

aboutMe(bool isLeftTapped, bool isRightTapped, double height, double width) {
  Color eggshell = Color.fromRGBO(240, 234, 214, 1);

  return AnimatedContainer(
    padding: EdgeInsets.all(4.0),
    curve: Curves.easeInOutBack,
    duration: Duration(milliseconds: 700),
    width: isRightTapped ? width * 0.6 : width * 0.2,
    height: isRightTapped ? height * 0.99 : height * 0.9,
    margin: EdgeInsets.fromLTRB(width * 0.37, height * 0.23, 0, 0),
    child: Column(
      children: <Widget>[
        AnimatedContainer(
            duration: Duration(milliseconds: 500),
            width: isRightTapped ? 300 : 0,
            height: isRightTapped ? 300 : 0,
            margin: EdgeInsets.fromLTRB(0.0 * 0.4, 0, 0, 42.0),
            child: CircleAvatar(
                backgroundImage: AssetImage("assets/portfolio-image.jpg"))),
        AnimatedDefaultTextStyle(
          curve: Curves.easeInOutBack,
          style: TextStyle(
              fontFamily: 'Product-Sans',
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w100,
              color: isRightTapped ? Colors.black : Colors.transparent,
              fontSize: 28.0),
          duration: Duration(milliseconds: 500),
          textAlign: TextAlign.center,
          child: Text(
              "Hello,\nMy name is Akshit Saxena. I'm currently in my 3rd pursuing my bachelor's degree in \nComputer Science from Manipal Institute of Technology.\n\nI have a huge intereset in Application Development and Competitve Coding \nAlso, I design a bit."),
        ),
        AnimatedContainer( 
          margin: EdgeInsets.only(top: 56.0),
          duration: Duration(milliseconds: 500),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Icon(
                Icons.email,
                size: isRightTapped ? 48 : 0,
              ),
              Icon(
                FontAwesomeIcons.github,
                size: isRightTapped ? 48 : 0,
              ),
              Icon(
                FontAwesomeIcons.linkedin,
                size: isRightTapped ? 48 : 0,
              ),
              Icon(
                FontAwesomeIcons.instagram,
                size: isRightTapped ? 48 : 0,
              ),
            ],
          ),
        )
      ],
    ),
  );
}
