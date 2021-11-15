
import 'package:dio/dio.dart';
import 'package:menu_deliver_app/util/model_ext.dart';
import 'package:menu_deliver_app/util/openapi_factory.dart';
import 'package:openapi/openapi.dart';

class MenusService {

  Future<List<MenuData>> loadNewArrivalMenus() async {
    final api = OpenApiFactory().build().getMenuApi();
    List<MenuData> newArrivalMenus = [];
    try {
      final response = await api.getMenuNewArrival();
      newArrivalMenus = (response.data!.info!.asMap['menus'] as List).map((m) => MenuDataExt.fromJson(m)).toList();
      // response.then((value) =>
      // {
      //   //JsonObjectLite<dynamic>.fromJsonString(value.data!.info!.asString, Listbuil) as List<MenuData>;
      //   //jsonEncode(value.data!.info!.asString);
      //   // //
      //   // print((value.data!.info!.asMap['menus'] as List)[0]),
      //   // //print(MenuData.fromJson((value.data!.info!.asMap['menus'] as List)[0])),
      //   // print(MenuDataExt.fromJson((value.data!.info!.asMap['menus'] as List)[0])),
      //
      //   newArrivalMenus = (value.data!.info!.asMap['menus'] as List).map((m) => MenuDataExt.fromJson(m)).toList(),
      // });
    } on DioError catch(e) {
      print('Exception when calling MenuApi->getMenuNewArrival: $e\n');
    }

    return newArrivalMenus;
  }
}