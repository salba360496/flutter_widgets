import 'package:flutter/material.dart';

const Color kBlue = Color(0xff2d77e8);
const Color kBlueDark = Color(0xff113e7d);
const Color kBlueLight = Color(0xff3ac8eb);
const List<BoxShadow> kBlackBoxShadow = <BoxShadow>[BoxShadow(color: Colors.black38, offset: Offset(1.5, 1.5), blurRadius: 7)];
const LinearGradient kBlueDarkGradient = LinearGradient(begin: Alignment.centerLeft, end: Alignment.centerRight, colors: <Color>[kBlueLight, kBlueDark]);
