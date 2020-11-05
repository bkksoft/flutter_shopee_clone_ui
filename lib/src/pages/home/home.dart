import 'package:flutter/material.dart';
import 'package:flutter_shopee_clone_ui/src/pages/home/widgets/banner_slide.dart';
import 'package:flutter_shopee_clone_ui/src/pages/home/widgets/main_menu.dart';

import 'header.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _scrollController = TrackingScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      body: Stack(
        children: [
          SingleChildScrollView(
            controller: _scrollController,
            child: Column(
              children: [
                BannerSlide(),
                // MainMenu(),
                Container(
                  color: Colors.red,
                  child: Text("XXX"),
                  height: 1500,
                  width: double.infinity,
                ),
              ],
            ),
          ),
          Header(_scrollController)
        ],
      ),
    );
  }
}
