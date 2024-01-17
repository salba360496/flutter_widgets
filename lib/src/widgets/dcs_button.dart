import 'package:flutter/material.dart';

import '../../flutter_widgets.dart';

class DcsButton extends StatelessWidget {
  const DcsButton(
      {required this.buttonText,
      required this.onPressedBtn,
      this.width = 35,
      this.borderRadius,
      this.shadow,
      this.txtSize,
      this.padding,
      this.gradientColor,
      this.weight,
      this.elevation = 1,
      this.txtColor,
      super.key,
      this.height,
      this.margin,
      this.icon});

  final String buttonText;
  final double? width;
  final double? height;
  final VoidCallback onPressedBtn;
  final double? borderRadius;
  final List<BoxShadow>? shadow;
  final double? txtSize;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Gradient? gradientColor;
  final String? weight;
  final int elevation;
  final Color? txtColor;
  final Widget? icon;

  @override
  Widget build(final BuildContext context) {
    return InkWell(
        onTap: onPressedBtn,
        child: Container(
            alignment: Alignment.center,
            width: width != null ? cWidth(context, width!) : null,
            height: height != null ? cHeight(context, height!) : null,
            padding: padding ?? edgeSymHV(context, h: 2, v: 1.5),
            margin: margin,
            decoration: BoxDecoration(
                gradient: gradientColor,
                boxShadow: elevation == 0 ? null : shadow ?? <BoxShadow>[const BoxShadow(color: Color(0x61000000), offset: Offset(1.5, 1.5), blurRadius: 7)],
                borderRadius: BorderRadius.circular(borderRadius ?? 6)),
            child: icon == null
                ? DcsText.noAssertion(buttonText, clr: txtColor ?? const Color(0xffffffff), size: txtSize ?? 14, weight: weight ?? 'Bold')
                : DcsRow(space: 0.3, mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
                    icon!,
                    DcsText.noAssertion(buttonText, clr: txtColor ?? const Color(0xffffffff), size: txtSize ?? 14, weight: weight ?? 'Bold')
                  ])));
  }
}
