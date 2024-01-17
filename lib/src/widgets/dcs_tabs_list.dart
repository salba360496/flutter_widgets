// import 'package:flutter/material.dart';
//
// class DcsTabsListScreen extends StatefulWidget {
//   const DcsTabsListScreen(this.onChanged, {required this.tabList, this.initialIndex = 0, this.limitListOnScreen = false, super.key});
//
//   final List<String> tabList;
//   final Function(int) onChanged;
//   final bool limitListOnScreen;
//   final int initialIndex;
//
//   @override
//   State<DcsTabsListScreen> createState() => _DcsTabsListScreenState();
// }
//
// class _DcsTabsListScreenState extends State<DcsTabsListScreen> {
//   int currentIndex = 0;
//
//   @override
//   void initState() {
//     currentIndex = widget.initialIndex;
//     super.initState();
//   }
//
//   @override
//   Widget build(final BuildContext context) {
//     return SizedBox(
//       height: cHeight(4.5),
//       child: Column(
//         children: <Widget>[
//           Expanded(
//               child: ListView.builder(
//                   scrollDirection: Axis.horizontal,
//                   itemCount: widget.tabList.length,
//                   itemExtent: widget.limitListOnScreen ? cWidth(100 / widget.tabList.length) : null,
//                   itemBuilder: (final BuildContext context, final int index) {
//                     return GestureDetector(
//                         onTap: () async {
//                           setState(() {
//                             currentIndex = index;
//                             widget.onChanged(currentIndex);
//                           });
//                         },
//                         child: Container(
//                             margin: edgeSymHV(h: 0.5),
//                             padding: edgeSymHV(h: 2, v: 1),
//                             alignment: Alignment.center,
//                             decoration: BoxDecoration(
//                                 gradient: currentIndex == index ? kDcsLinearMain1 : null,
//                                 borderRadius: const BorderRadius.only(topRight: Radius.circular(12), topLeft: Radius.circular(12))),
//                             child: DcsText.b12(widget.tabList[index], clr: currentIndex != index ? kButtonColor : kWhite)));
//                   })),
//           const Divider(),
//         ],
//       ),
//     );
//   }
// }
