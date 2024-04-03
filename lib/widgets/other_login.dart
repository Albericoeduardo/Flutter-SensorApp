import 'package:flutter/material.dart';

class OtherLogin extends StatelessWidget {
  const OtherLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: TabBar(
        labelColor: Colors.transparent,
        indicatorColor: Colors.transparent,
        unselectedLabelColor: Colors.transparent,
        tabs: [
          Tab(icon: Image.asset('assets/images/twitter_logo.png',), height: 60,),
          Tab(icon: Image.asset('assets/images/facebook_logo.png',), height: 60,),
          Tab(icon: Image.asset('assets/images/github_logo.png',), height: 60,)
        ],
      ),
    );
  }
}