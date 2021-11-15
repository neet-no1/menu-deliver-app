
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:openapi/openapi.dart';

final tabIndexProvider = StateProvider<int>((ref) => 0);

final newArrivalMenusProvider = StateProvider<List<MenuData>>((ref) => []);