import 'dart:collection';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:menu_deliver_app/util/model_ext.dart';
import 'package:menu_deliver_app/util/openapi_factory.dart';
import 'package:menu_deliver_app/view_model/view_model.dart';

import 'components/media_card.dart';
import 'components/media_card_large.dart';
import 'components/slick.dart';

class TopWidget extends ConsumerStatefulWidget {
  const TopWidget(
{
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState<TopWidget> createState() => _TopWidgetState();
}

class _TopWidgetState extends ConsumerState<TopWidget> {
  late ViewModel _viewModel;

  @override
  void initState() {
    super.initState();

    print('topwidget init');

  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    //Widget widget = Container();
    return SingleChildScrollView(
      child: Column(children: [
        SizedBox(
          height: size.height / 4,
//          width: size.width,
          child: Slick(size.height / 4),
        ),
        const Eyecatch(),
        RichText(
          text: TextSpan(
            style: DefaultTextStyle.of(context).style,
            children: [
              TextSpan(text: '*', style: TextStyle(color: Colors.blue)),
              TextSpan(
                  text: '新着', style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: '*', style: TextStyle(color: Colors.blue)),
            ],
          ),
        ),
        MediaCard(size),//_viewModel.newArrivalMenus),
        RichText(
          text: TextSpan(
            style: DefaultTextStyle.of(context).style,
            children: [
              TextSpan(text: '*', style: TextStyle(color: Colors.blue)),
              TextSpan(
                  text: '記事', style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: '*', style: TextStyle(color: Colors.blue)),
            ],
          ),
        ),
        MediaCardLarge(size),
        RichText(
          text: TextSpan(
            style: DefaultTextStyle.of(context).style,
            children: [
              TextSpan(text: '*', style: TextStyle(color: Colors.blue)),
              TextSpan(
                  text: '記事', style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: '*', style: TextStyle(color: Colors.blue)),
            ],
          ),
        ),
        MediaCardLarge(size),
      ]),
    );
    //return widget;
  }
}

class Eyecatch extends StatelessWidget {
  const Eyecatch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Stack(children: [
      ClipRect(
        child: Align(
          alignment: Alignment.center,
          heightFactor: 0.2,
          child: Image.asset(
            'assets/eyecatch.jpg',
            color: Colors.black45,
            colorBlendMode: BlendMode.darken,
          ),
        ),
      ),
      Center(
        child: Container(
          margin: EdgeInsets.all(5.0),
          width: size.width / 6,
          child: Image.asset(
            'assets/logo_white.png',
            //fit: BoxFit.fill,
          ),
        ),
      ),
    ]);
  }
}
