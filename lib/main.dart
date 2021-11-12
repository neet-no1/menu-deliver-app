import 'package:flutter/material.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:flutter_flavorizr/parser/models/flavors/flavor.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:menu_deliver_app/ui/MenuView.dart';
import 'package:menu_deliver_app/ui/components/basic_layout.dart';
import 'package:menu_deliver_app/ui/top.dart';

void main() {
  FlavorConfig(
      name: "LOCAL",
      variables: {
        "baseUrl": "http://10.0.2.2:48080",
        "s3Url": "https://www.menu-deliver.com",
      }
  );

  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Startup Name Generator',
      initialRoute: '/',
      routes: {
        '/': (context) => const BasicLayoutWidget(TopWidget()),
        '/menu_view': (context) => const BasicLayoutWidget(MenuView()),
      },
    );
  }
}