
import 'package:flutter/material.dart';
class DcsText extends StatelessWidget {
  /// If assertion occur it may be cause by size or weight.
  /// Please use other DcsText i.e DcsText.s15 or DcsText.b15.
  /// or DcsText.sBold or DcsText.bold.
  const DcsText(this.title,
      {super.key,
      this.size,
      this.clr,
      @Deprecated('Use instead DcsText.sBold or DcsText.bold.') this.weight,
      this.center,
      this.rightAlign,
      this.leftAlign,
      this.toverflow,
      this.lines,
      this.underline = false})
      : assert(!(size != null && !(size < 8 || size > 19)), 'Please use other method'),
        assert(!(weight != null), 'Please use other method');

  const DcsText.sBold(this.title,
      {super.key, this.size, this.clr, this.center, this.rightAlign, this.leftAlign, this.toverflow, this.lines, this.underline = false})
      : weight = 'Semi Bold',
        assert(!(size != null && !(size < 8 || size > 19)), 'Please use other method');

  const DcsText.bold(this.title,
      {super.key, this.size, this.clr, this.center, this.rightAlign, this.leftAlign, this.toverflow, this.lines, this.underline = false})
      : weight = 'Bold',
        assert(!(size != null && !(size < 8 || size > 19)), 'Please use other method');

  const DcsText.n8(this.title, {super.key, this.clr, this.center, this.rightAlign, this.leftAlign, this.toverflow, this.lines, this.underline = false})
      : size = 8,
        weight = null;

  const DcsText.s8(this.title, {super.key, this.clr, this.center, this.rightAlign, this.leftAlign, this.toverflow, this.lines, this.underline = false})
      : size = 8,
        weight = 'Semi Bold';

  const DcsText.b8(this.title, {super.key, this.clr, this.center, this.rightAlign, this.leftAlign, this.toverflow, this.lines, this.underline = false})
      : size = 8,
        weight = 'Bold';

  const DcsText.n9(this.title, {super.key, this.clr, this.center, this.rightAlign, this.leftAlign, this.toverflow, this.lines, this.underline = false})
      : size = 9,
        weight = null;

  const DcsText.s9(this.title, {super.key, this.clr, this.center, this.rightAlign, this.leftAlign, this.toverflow, this.lines, this.underline = false})
      : size = 9,
        weight = 'Semi Bold';

  const DcsText.b9(this.title, {super.key, this.clr, this.center, this.rightAlign, this.leftAlign, this.toverflow, this.lines, this.underline = false})
      : size = 9,
        weight = 'Bold';

  const DcsText.n10(this.title, {super.key, this.clr, this.center, this.rightAlign, this.leftAlign, this.toverflow, this.lines, this.underline = false})
      : size = 10,
        weight = null;

  const DcsText.s10(this.title, {super.key, this.clr, this.center, this.rightAlign, this.leftAlign, this.toverflow, this.lines, this.underline = false})
      : size = 10,
        weight = 'Semi Bold';

  const DcsText.b10(this.title, {super.key, this.clr, this.center, this.rightAlign, this.leftAlign, this.toverflow, this.lines, this.underline = false})
      : size = 10,
        weight = 'Bold';

  const DcsText.n11(this.title, {super.key, this.clr, this.center, this.rightAlign, this.leftAlign, this.toverflow, this.lines, this.underline = false})
      : size = 11,
        weight = null;

  const DcsText.s11(this.title, {super.key, this.clr, this.center, this.rightAlign, this.leftAlign, this.toverflow, this.lines, this.underline = false})
      : size = 11,
        weight = 'Semi Bold';

  const DcsText.b11(this.title, {super.key, this.clr, this.center, this.rightAlign, this.leftAlign, this.toverflow, this.lines, this.underline = false})
      : size = 11,
        weight = 'Bold';

  const DcsText.n12(this.title, {super.key, this.clr, this.center, this.rightAlign, this.leftAlign, this.toverflow, this.lines, this.underline = false})
      : size = 12,
        weight = null;

  const DcsText.s12(this.title, {super.key, this.clr, this.center, this.rightAlign, this.leftAlign, this.toverflow, this.lines, this.underline = false})
      : size = 12,
        weight = 'Semi Bold';

  const DcsText.b12(this.title, {super.key, this.clr, this.center, this.rightAlign, this.leftAlign, this.toverflow, this.lines, this.underline = false})
      : size = 12,
        weight = 'Bold';

  const DcsText.n13(this.title, {super.key, this.clr, this.center, this.rightAlign, this.leftAlign, this.toverflow, this.lines, this.underline = false})
      : size = 13,
        weight = null;

  const DcsText.s13(this.title, {super.key, this.clr, this.center, this.rightAlign, this.leftAlign, this.toverflow, this.lines, this.underline = false})
      : size = 13,
        weight = 'Semi Bold';

  const DcsText.b13(this.title, {super.key, this.clr, this.center, this.rightAlign, this.leftAlign, this.toverflow, this.lines, this.underline = false})
      : size = 13,
        weight = 'Bold';

  const DcsText.n14(this.title, {super.key, this.clr, this.center, this.rightAlign, this.leftAlign, this.toverflow, this.lines, this.underline = false})
      : size = 14,
        weight = null;

  const DcsText.s14(this.title, {super.key, this.clr, this.center, this.rightAlign, this.leftAlign, this.toverflow, this.lines, this.underline = false})
      : size = 14,
        weight = 'Semi Bold';

  const DcsText.b14(this.title, {super.key, this.clr, this.center, this.rightAlign, this.leftAlign, this.toverflow, this.lines, this.underline = false})
      : size = 14,
        weight = 'Bold';

  const DcsText.n15(this.title, {super.key, this.clr, this.center, this.rightAlign, this.leftAlign, this.toverflow, this.lines, this.underline = false})
      : size = 15,
        weight = null;

  const DcsText.s15(this.title, {super.key, this.clr, this.center, this.rightAlign, this.leftAlign, this.toverflow, this.lines, this.underline = false})
      : size = 15,
        weight = 'Semi Bold';

  const DcsText.b15(this.title, {super.key, this.clr, this.center, this.rightAlign, this.leftAlign, this.toverflow, this.lines, this.underline = false})
      : size = 15,
        weight = 'Bold';

  const DcsText.n16(this.title, {super.key, this.clr, this.center, this.rightAlign, this.leftAlign, this.toverflow, this.lines, this.underline = false})
      : size = 16,
        weight = null;

  const DcsText.s16(this.title, {super.key, this.clr, this.center, this.rightAlign, this.leftAlign, this.toverflow, this.lines, this.underline = false})
      : size = 16,
        weight = 'Semi Bold';

  const DcsText.b16(this.title, {super.key, this.clr, this.center, this.rightAlign, this.leftAlign, this.toverflow, this.lines, this.underline = false})
      : size = 16,
        weight = 'Bold';

  const DcsText.n17(this.title, {super.key, this.clr, this.center, this.rightAlign, this.leftAlign, this.toverflow, this.lines, this.underline = false})
      : size = 17,
        weight = null;

  const DcsText.s17(this.title, {super.key, this.clr, this.center, this.rightAlign, this.leftAlign, this.toverflow, this.lines, this.underline = false})
      : size = 17,
        weight = 'Semi Bold';

  const DcsText.b17(this.title, {super.key, this.clr, this.center, this.rightAlign, this.leftAlign, this.toverflow, this.lines, this.underline = false})
      : size = 17,
        weight = 'Bold';

  const DcsText.n18(this.title, {super.key, this.clr, this.center, this.rightAlign, this.leftAlign, this.toverflow, this.lines, this.underline = false})
      : size = 18,
        weight = null;

  const DcsText.s18(this.title, {super.key, this.clr, this.center, this.rightAlign, this.leftAlign, this.toverflow, this.lines, this.underline = false})
      : size = 18,
        weight = 'Semi Bold';

  const DcsText.b18(this.title, {super.key, this.clr, this.center, this.rightAlign, this.leftAlign, this.toverflow, this.lines, this.underline = false})
      : size = 18,
        weight = 'Bold';

  final String? title;
  final String? weight;
  final double? size;
  final Color? clr;
  final TextOverflow? toverflow;
  final bool? center;
  final bool? rightAlign;
  final bool? leftAlign;
  final bool? underline;
  final int? lines;

  // final TextStyle? textStyle;

  @override
  Widget build(final BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return Text(title == null || title == 'null' ? '' : title!,
        textScaler: TextScaler.noScaling,
        overflow: toverflow ?? TextOverflow.ellipsis,
        maxLines: lines == null
            ? 1
            : lines == 0
                ? null
                : lines,
        textAlign: center == true
            ? TextAlign.center
            : rightAlign == true
                ? TextAlign.right
                : leftAlign == true
                    ? TextAlign.left
                    : null,
        style:
            // textStyle ??
            TextStyle(
                decorationColor: clr,
                decoration: underline == true ? TextDecoration.underline : TextDecoration.none,
                fontSize: screenWidth > 480 ? (((screenWidth/ 3.8) / 100) * (size ?? 13) / 1.5) : ((screenWidth / 3.8) / 100) * (size ?? 13),
                color: clr ?? Colors.black,
                fontFamily: 'Roboto',
                fontWeight: weight == 'Bold'
                    ? FontWeight.w700
                    : weight == 'Semi Bold'
                        ? FontWeight.w500
                        : FontWeight.normal));
  }
}
