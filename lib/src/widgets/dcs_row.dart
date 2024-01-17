
import 'package:flutter/material.dart';

class DcsRow extends StatelessWidget {
  const DcsRow({
    required this.children,
    this.space,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.mainAxisAlignment = MainAxisAlignment.start,
    super.key,
  });

  final List<Widget> children;
  final double? space;
  final CrossAxisAlignment crossAxisAlignment;
  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(final BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Row(
      crossAxisAlignment: crossAxisAlignment,
      mainAxisAlignment: mainAxisAlignment,
      children: makeList(width),
    );
  }

  List<Widget> makeList(final double width) {
    final List<Widget> separatedList = <Widget>[];
    for (int i = 0; i < children.length; i++) {
      separatedList.add(children[i]);
      if (i != children.length - 1) {
        separatedList.add(SizedBox(width: (width/100)*(space ?? 2)));
      }
    }
    return separatedList;
  }
}
