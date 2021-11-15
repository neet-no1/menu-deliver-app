import 'package:built_collection/src/list.dart';
import 'package:openapi/openapi.dart';

extension MenuDataExt on MenuData {

    static MenuData fromJson(Map<String, dynamic> json) {
      var m = MenuDataBuilder();
      m.id = json['id'];
      m.title = json['title'];
      m.subTitle = json['subTitle'];
      m.categoryId = json['categoryId'];
      m.thumbPath = json['thumbPath'];
      m.contents = json['contents'];
      m.imagePaths = ListBuilder<MenuImageData>((json['imagePaths']as List).map((i) => MenuImageDataExt.fromJson(i)).toList());
      m.opened = json['opened'];
      m.mine = json['mine'];

      return m.build();
  }

}

extension MenuImageDataExt on MenuImageData {
    static MenuImageData fromJson(Map<String, dynamic> json) {
        var m = MenuImageDataBuilder();
        m.imageDescription = json['imageDescription'];
        m.uploadImageUrl = json['uploadImageUrl'];

        return m.build();
    }
}