import 'package:flutter/material.dart';

class PicButton extends StatelessWidget{
  final String icon;
  final Widget route;
  const PicButton({super.key, required this.icon, required this.route});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: TabBar(
        labelColor: Colors.transparent,
        indicatorColor: Colors.transparent,
        unselectedLabelColor: Colors.transparent,
        tabs: [
          Tab(icon: Image.asset(icon),)
        ]
      )
    );
  }
}