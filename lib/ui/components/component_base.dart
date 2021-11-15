
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';

class ComponentBase extends StatefulWidget {

  final Widget body;

  const ComponentBase(this.body, {Key? key}) : super(key: key);

  @override
  _ComponentBaseState createState() => _ComponentBaseState(body);
}

class _ComponentBaseState extends State<ComponentBase> {

  final Widget body;

  _ComponentBaseState(this.body);

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
      body: Container(
        //margin: EdgeInsets.only(bottom: 20.0),
        //padding: EdgeInsets.only(bottom: 20.0),
        child: body,
      ),
    );
  }
}
