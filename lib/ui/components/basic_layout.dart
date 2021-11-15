import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:menu_deliver_app/providers/menu_provider.dart';
import 'package:menu_deliver_app/ui/top.dart';
import 'package:menu_deliver_app/view_model/view_model.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';

import '../MenuView.dart';

class BasicLayoutWidget extends ConsumerStatefulWidget {
  const BasicLayoutWidget(this.body, {Key? key}) : super(key: key);

  final Widget? body;
  //const BasicLayoutWidget();

  @override
  ConsumerState<BasicLayoutWidget> createState() => _BasicLayoutWidgetState(body);
}

class _BasicLayoutWidgetState extends ConsumerState<BasicLayoutWidget> {

  final Widget? body;

  _BasicLayoutWidgetState(this.body);

  ViewModel _viewModel = ViewModel();

  static List<Widget> _pageList = [
    TopWidget(),
    TopWidget(),
    TopWidget(),
    TopWidget(),
    MenuView(),
  ];

  @override
  void initState() {
    super.initState();
    _viewModel.setRef(ref);
  }

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
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'ホーム',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.article),
            label: '記事',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dining),
            label: '献立',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.question_answer),
            label: '質問',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: '設定',
          ),
        ],
        currentIndex: _viewModel.tabIndex,
        onTap: ((index) =>
        {
          //Navigator.pushNamedAndRemoveUntil(context, '/', (_) => false),
          _viewModel.changeTab(index)
        }),
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Container(
        //margin: EdgeInsets.only(bottom: 20.0),
        //padding: EdgeInsets.only(bottom: 20.0),
        child: body ?? _pageList[_viewModel.tabIndex],
      ),
    );
  }
}
