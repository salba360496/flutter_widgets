import 'dart:ui';

import 'package:flutter/material.dart';

class GlassMorphism extends StatelessWidget {
  const GlassMorphism({required this.child, required this.start, required this.end, this.borderRadius, this.border, super.key});

  final Widget child;
  final double start;
  final double end;
  final BorderRadius? borderRadius;
  final BoxBorder? border;

  @override
  Widget build(final BuildContext context) {
    return ClipRRect(
        child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
            child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: <Color>[Colors.white.withOpacity(start), Colors.white.withOpacity(end)],
                        begin: AlignmentDirectional.topStart,
                        end: AlignmentDirectional.bottomEnd),
                    borderRadius: borderRadius ?? const BorderRadius.all(Radius.circular(10)),
                    border: border ?? Border.all(width: 1.5, color: Colors.white.withOpacity(0.2))),
                child: child)));
  }
}
