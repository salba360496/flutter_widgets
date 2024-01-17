import 'package:flutter/material.dart';

import '../../flutter_widgets.dart';
import '../constant_colors.dart';
import 'dcs_text.dart';

class DcsTabsCircular extends StatefulWidget {
  /// Do not use more then 3 tabs
  ///
  /// Required List of String of tabs
  ///
  /// i.e : const <String> [['Text1', 'Text2', 'Text3']]

  const DcsTabsCircular(
    this.onChanged, {
    required this.tabs,
    this.height,
    this.space,
    this.shape,
    this.selectedColor,
    this.unSelectedColor,
    this.initialIndex = 0,
    this.bgColor,
    this.bgGradient,
    this.labelColor,
    this.unSelectedLabelColor,
    this.indicatorColor,
    super.key,
  }) : assert(!(bgColor != null && bgGradient != null), 'Please select only. Either select bgColor or bgGradient.');

  final List<String> tabs;
  final Function(int) onChanged;
  final MainAxisAlignment? space;
  final double? height;
  final OutlinedBorder? shape;
  final Color? selectedColor;
  final Color? unSelectedColor;
  final int initialIndex;
  final Color? bgColor; // by default white
  final LinearGradient? bgGradient;
  final Color? labelColor; //by default white
  final Color? unSelectedLabelColor; //by default BlueDark
  final Gradient? indicatorColor; // by default BlueDark

  @override
  State<DcsTabsCircular> createState() => _DcsTabsCircularState();
}

class _DcsTabsCircularState extends State<DcsTabsCircular> with SingleTickerProviderStateMixin {
  int currentIndex = 0;
  late final TabController _ctr;

  @override
  void initState() {
    currentIndex = widget.initialIndex;
    _ctr = TabController(length: widget.tabs.length, vsync: this, initialIndex: currentIndex);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    try {
      if (mounted) {
        _ctr.dispose();
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  @override
  Widget build(final BuildContext context) {
    return Padding(
        padding: edgeSymHV(context, h: 2, v: 1),
        child: Container(
            height: cWidth(context, 8),
            decoration: BoxDecoration(color: widget.bgColor ?? const Color(0xffffffff), borderRadius: const BorderRadius.all(Radius.circular(50))),
            child: TabBar(
                controller: _ctr,
                onTap: (final int index) => widget.onChanged(index),
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: BoxDecoration(gradient: widget.indicatorColor ?? kBlueDarkGradient, borderRadius: const BorderRadius.all(Radius.circular(50))),
                labelColor: widget.labelColor ?? const Color(0xffffffff),
                unselectedLabelColor: widget.unSelectedColor ?? const Color(0xff082e57),
                // labelStyle: const TextStyle(
                //     // fontSize: MediaQuery.of(context).size.width > 480 ? ((dcsTextSize(context) * 14)) : (dcsTextSize(context) * 14),
                //     fontFamily: 'Roboto',
                //     fontWeight: FontWeight.w700),
                labelPadding: EdgeInsets.zero,
                // tabs: List<Tab>.generate(widget.tabs.length, (final int index) => Tab(text: widget.tabs[index])))));
                tabs: List<Tab>.generate(widget.tabs.length, (final int index) => Tab(child: DcsText(widget.tabs[index]))))));
  }
}
