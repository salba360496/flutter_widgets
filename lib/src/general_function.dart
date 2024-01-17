import 'dart:math';
import 'package:flutter/material.dart';

double cWidth(final BuildContext context, final double size) => size * MediaQuery.sizeOf(context).width / 100;

double cHeight(final BuildContext context, final double size) => size * MediaQuery.sizeOf(context).height / 100;

EdgeInsets edgeSymHV(final BuildContext context, {final double? h, final double? v}) =>
    EdgeInsets.symmetric(horizontal: h == null ? 0 : cWidth(context, h), vertical: v == null ? 0 : cHeight(context, v));

EdgeInsets edgeLTRB(final BuildContext context, {final double? l, final double? t, final double? r, final double? b}) => EdgeInsets.fromLTRB(
    l == null ? 0 : cWidth(context, l), t == null ? 0 : cHeight(context, t), r == null ? 0 : cWidth(context, r), b == null ? 0 : cHeight(context, b));

double cImgSize(final BuildContext context, final double size) => size * MediaQuery.sizeOf(context).width / 100;

double dcsTextSize(final BuildContext context) => (MediaQuery.sizeOf(context).width / 3.8) / 100;

Color getRandomColor() => Colors.primaries[Random().nextInt(Colors.primaries.length)][Random().nextInt(9) * 100] ?? Colors.blue;

Color getRandomLightColor() => Colors.accents[Random().nextInt(Colors.primaries.length)][Random().nextInt(9) * 100] ?? Colors.blue;
