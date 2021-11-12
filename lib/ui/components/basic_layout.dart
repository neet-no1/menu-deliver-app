import 'package:flutter/material.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';

class BasicLayoutWidget extends StatelessWidget {
  //const HeaderWidget({Key? key}) : super(key: key);

  final Widget body;
  const BasicLayoutWidget(this.body);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NewGradientAppBar(
        gradient:
        const LinearGradient(colors: [Color(0xFFfa709a), Color(0xFFfee140)]),
        title: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(
            'assets/logo.png',
            fit: BoxFit.contain,
            height: 32,
          ),
        ]),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            IconButton(icon: Icon(Icons.menu), onPressed: () {}),
            Spacer(),
            IconButton(icon: Icon(Icons.search), onPressed: () {}),
            IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
          ],
        ),
      ),
      floatingActionButton:
      FloatingActionButton(child: Icon(Icons.add), onPressed: () {}),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Container(
        //margin: EdgeInsets.only(bottom: 20.0),
        padding: EdgeInsets.only(bottom: 20.0),
        child: body,
      ),
    );
  }
}
