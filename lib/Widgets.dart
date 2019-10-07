import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/widgets.dart';

Widget imgbutton = Container(
  decoration: BoxDecoration(
      image: DecorationImage(
          image: AssetImage('images/img2.jpg'), fit: BoxFit.cover)),
  child: SizedBox(
    width: double.infinity,
    height: 120,
    child: FlatButton(
      disabledColor: Colors.grey,
      disabledTextColor: Colors.black,
      onPressed: () {},
      child: Align(
          alignment: Alignment(-0.85, 0.85),
          child: Text(
            "Flat Button",
            style: TextStyle(color: Colors.white),
          )),
    ),
  ),
);

Widget imgbutton1 = Container(
  decoration: BoxDecoration(
      image: DecorationImage(
          image: AssetImage('images/img3.jpg'), fit: BoxFit.cover)),
  child: SizedBox(
    width: double.infinity,
    height: 120,
    child: FlatButton(
      disabledColor: Colors.grey,
      disabledTextColor: Colors.black,
      onPressed: () {},
      child: Align(
          alignment: Alignment(-0.85, 0.85),
          child: Text(
            "Flat Button",
            style: TextStyle(color: Colors.white),
          )),
    ),
  ),
);

Widget carrouseli = Column( children: <Widget>[SizedBox(
  height: 200.0,
  width: double.infinity,
  child:  Carousel(
    images: [
      new Image.asset(
        'images/img1.jpg',
        fit: BoxFit.cover,
      ),
      new Image.asset(
        'images/img2.jpg',
        fit: BoxFit.cover,
      ),
      new Image.asset(
        'images/img3.jpg',
        fit: BoxFit.cover,
      ),
    ],
  ),
)],
   );
