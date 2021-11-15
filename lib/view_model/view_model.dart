import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:menu_deliver_app/model/menus.dart';
import 'package:menu_deliver_app/providers/menu_provider.dart';
import 'package:openapi/openapi.dart';

class ViewModel {
  final MenusService _menusService = MenusService();
  late WidgetRef _ref;

  void setRef(WidgetRef ref) {
    _ref = ref;
  }

  get newArrivalMenus => _ref.watch(newArrivalMenusProvider);

  get tabIndex => _ref.watch(tabIndexProvider);

  Future<void> loadNewArrivalMenus() async {
    List<MenuData> menus = await _menusService.loadNewArrivalMenus();
    _ref.read(newArrivalMenusProvider.notifier).state = menus;
  }

  void changeTab(int index) {
    _ref.read(tabIndexProvider.notifier).state = index;
  }

}
