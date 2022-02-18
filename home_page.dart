import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tabbar/tabbar_controller.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);
  final _controller = Get.put(CustomTabController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Column(
          children: [
            TabBar(
              controller: _controller.tabController,
              labelColor: Colors.green,
              unselectedLabelColor: Colors.black,
              tabs: [
                SizedBox(height: 40, child: Center(child: Text("Flutter"))),
                SizedBox(height: 40, child: Center(child: Text("TabBar"))),
              ],
            ),
          ],
        ),
        Expanded(
          child: Container(
            child: TabBarView(
              controller: _controller.tabController,
              children: [
                Center(
                  child: Text("data"),
                ),
                Center(
                  child: Text("data"),
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}
