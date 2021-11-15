import 'package:flutter/material.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:flutter_flavorizr/parser/models/flavors/flavor.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:menu_deliver_app/ui/MenuView.dart';
import 'package:menu_deliver_app/ui/components/basic_layout.dart';
import 'package:menu_deliver_app/ui/components/component_base.dart';
import 'package:menu_deliver_app/ui/top.dart';
import 'package:menu_deliver_app/view_model/view_model.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerStatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  ConsumerState<MyApp> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {

  ViewModel _viewModel = ViewModel();

  @override
  void initState() {
    super.initState();

    print('mainwidget init');

    _viewModel.setRef(ref);
    _viewModel.loadNewArrivalMenus();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Startup Name Generator',
        initialRoute: '/',
        routes: {
          '/': (context) => BasicLayoutWidget(null),
          '/menu_view': (context) => const ComponentBase(MenuView()),
        },
    );
  }
}