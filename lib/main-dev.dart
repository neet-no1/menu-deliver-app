import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'flavors.dart';
import 'main.dart';

void main() {
  F.appFlavor = Flavor.DEV;
  runApp(ProviderScope(child: MyApp()));
}
