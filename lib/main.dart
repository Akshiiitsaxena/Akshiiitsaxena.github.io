import 'package:flutter/material.dart';
import 'package:portfolio/About.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(fontFamily: 'Product-Sans'),
    debugShowCheckedModeBanner: false,
    home: PortFolio(),
  ));
}

class PortFolio extends StatefulWidget {
  @override
  _PortFolioState createState() => _PortFolioState();
}

class _PortFolioState extends State<PortFolio> {
  bool isLeftTapped = false;
  bool isRightTapped = false;

  Color eggshell = Color.fromRGBO(240, 234, 214, 1);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: height,
            width: width,
            child: Row(
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isRightTapped = false;
                      isLeftTapped = true;
                    });
                  },
                  child: AnimatedContainer(
                    height: height,
                    width: (isLeftTapped || isRightTapped)
                        ? ((isLeftTapped) ? width * 2 / 3 : width * 1 / 3)
                        : width * 1 / 2,
                    color: Colors.redAccent,
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeInOutBack,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isLeftTapped = false;
                      isRightTapped = true;
                    });
                  },
                  child: AnimatedContainer(
                    height: height,
                    width: (isLeftTapped || isRightTapped)
                        ? ((isRightTapped) ? width * 2 / 3 : width * 1 / 3)
                        : width * 1 / 2,
                    color: eggshell,
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeInOutBack,
                  ),
                )
              ],
            ),
          ),
          Container(
            height: height,
            width: width,
            alignment: Alignment.center,
            padding: EdgeInsets.only(left: height * 1 / 32),
            child: Container(
              height: height * 0.53,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(width * 0.25, 0, 0, 0),
                    child: RichText(
                        text: TextSpan(
                      text: "Hi,",
                      style: TextStyle(
                        color: (isLeftTapped || isRightTapped)
                            ? Colors.transparent
                            : eggshell,
                        fontSize: 180,
                        fontFamily: 'Product-Sans',
                      ),
                    )),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(width * 0.25, 0, 0, 0),
                    child: RichText(
                        text: TextSpan(
                            text: "I'm",
                            style: TextStyle(
                              color: (isLeftTapped || isRightTapped)
                                  ? Colors.transparent
                                  : eggshell,
                              fontSize: 180,
                              fontFamily: 'Product-Sans',
                            ),
                            children: <TextSpan>[
                          TextSpan(
                              text: " Akshit",
                              style: TextStyle(
                                  color: (isLeftTapped || isRightTapped)
                                      ? Colors.transparent
                                      : Colors.black,
                                  fontSize: 180,
                                  fontFamily: 'Product-Sans',
                                  fontWeight: FontWeight.w100)),
                          TextSpan(
                              text: ".",
                              style: TextStyle(
                                  color: (isLeftTapped || isRightTapped)
                                      ? Colors.transparent
                                      : Colors.redAccent,
                                  fontSize: 180,
                                  fontFamily: 'Product-Sans',
                                  fontWeight: FontWeight.w100))
                        ])),
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: height * 7 / 10),
                child: Icon(
                  Icons.arrow_right,
                  size: 50,
                  color: isLeftTapped ? Colors.transparent : eggshell,
                ),
              ),
              AnimatedContainer(
                  padding: EdgeInsets.only(left: 32.0),
                  margin: EdgeInsets.only(
                      top: (isLeftTapped) ? height * 1 / 10 : height * 8 / 10),
                  width: (isLeftTapped) ? width * 3 / 8 : width * 2 / 8,
                  height: (isLeftTapped) ? height : height * 2 / 10,
                  alignment: Alignment.topCenter,
                  duration: Duration(milliseconds: 500),
                  curve: Curves.easeInOutBack,
                  child: Column(children: <Widget>[
                    AnimatedContainer(
                      duration: Duration(milliseconds: 500),
                      child: AnimatedDefaultTextStyle(
                        duration: Duration(milliseconds: 500),
                        child: Text("Projects & Experiences"),
                        curve: Curves.easeInOutBack,
                        style: TextStyle(
                            fontFamily: 'Product-Sans',
                            fontSize: isLeftTapped ? 64 : 48,
                            color: eggshell),
                      ),
                    ),
                  ])),
            ],
          ),
          Row(
            children: <Widget>[
              AnimatedContainer(
                  margin: EdgeInsets.fromLTRB(
                      isRightTapped ? width * 3 / 5 : width * 5.7 / 7,
                      (isRightTapped) ? height * 1 / 10 : height * 8.3 / 10,
                      0,
                      0),
                  width: (isRightTapped) ? width * 2 / 8 : width * 1.1 / 8,
                  height: (isRightTapped) ? height * 4 / 5 : height * 1 / 10,
                  alignment: Alignment.topCenter,
                  duration: Duration(milliseconds: 500),
                  curve: Curves.easeInOutBack,
                  child: Row(children: <Widget>[
                    AnimatedContainer(
                      duration: Duration(milliseconds: 500),
                      child: AnimatedDefaultTextStyle(
                        duration: Duration(milliseconds: 500),
                        child: Text("About Me"),
                        textAlign: TextAlign.center,
                        curve: Curves.easeInOutBack,
                        style: TextStyle(
                            fontFamily: 'Product-Sans',
                            fontSize: isRightTapped ? 64 : 48,
                            color: Colors.black),
                      ),
                    ),
                  ])),
              Container(
                margin: EdgeInsets.only(top: height * 8 / 10),
                child: Icon(
                  Icons.arrow_left,
                  size: isRightTapped ? 0 : 50,
                  color: isRightTapped ? Colors.transparent : Colors.black,
                ),
              ),
            ],
          ),
          aboutMe(
            isLeftTapped,
            isRightTapped,
            height,
            width
          )
        ],
      ),
    );
  }
}
