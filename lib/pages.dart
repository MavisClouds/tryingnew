import 'package:flutter/material.dart';
import 'Widgets.dart';
import 'main.dart';


// ignore: camel_case_types
Widget homepage = Container(
    child: Column(
      children: <Widget>[
        carrouseli,
        Padding(
          padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
          child: imgbutton,
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
          child: imgbutton1,
        )
      ],
    ));
