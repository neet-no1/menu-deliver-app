import 'dart:collection';
import 'package:flutter/material.dart';


final List<String> imgList = [
  'https://www.menu-deliver.com/public/menu_images/16_DqMFsL8xyzbUTKHEyqA8mA==',
  'https://www.menu-deliver.com/public/menu_images/16_DqMFsL8xyzbUTKHEyqA8mA==',
  'https://www.menu-deliver.com/public/menu_images/16_DqMFsL8xyzbUTKHEyqA8mA==',
  'https://www.menu-deliver.com/public/menu_images/16_DqMFsL8xyzbUTKHEyqA8mA==',
  'https://www.menu-deliver.com/public/menu_images/16_DqMFsL8xyzbUTKHEyqA8mA==',
  'https://www.menu-deliver.com/public/menu_images/16_DqMFsL8xyzbUTKHEyqA8mA==',
  'https://www.menu-deliver.com/public/menu_images/16_DqMFsL8xyzbUTKHEyqA8mA==',
  'https://www.menu-deliver.com/public/menu_images/16_DqMFsL8xyzbUTKHEyqA8mA==',
];

class MediaCard extends StatelessWidget {
  final Size size;

  MediaCard(this.size);

  List<Widget> imageSliders(BuildContext context, List<String> imgList) {
    return imgList
        .map((item) => GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/menu_view');
      },
      child: Container(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Container(
            height: size.width / 3,
            width: size.width / 3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  spreadRadius: 1.0,
                  blurRadius: 1.0,
                  offset: Offset(3, 3),
                ),
              ],
              /* ここまでを追加しました */
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.network(item, fit: BoxFit.fitHeight),
            ),
          ),
        ),
      ),
    ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: imageSliders(context, imgList),
      ),
    );
  }
}
