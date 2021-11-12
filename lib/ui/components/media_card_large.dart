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

class MediaCardLarge extends StatelessWidget {

  final Size size;
  MediaCardLarge(this.size);

  List<Widget> imageSliders(List<String> imgList) {
    return imgList.map((item) => Container(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Container(
          decoration: BoxDecoration(
            //borderRadius: BorderRadius.circular(10.0),
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
          child: Row(
            children: [
              SizedBox(
                height: size.width / 5,
                width: size.width / 5,
                child: ClipRRect(
                  //borderRadius: BorderRadius.circular(10.0),
                  child: Image.network(
                      'https://www.menu-deliver.com/public/menu_images/16_DqMFsL8xyzbUTKHEyqA8mA==',
                      fit: BoxFit.fitHeight),
                ),
              ),
              SizedBox(
                height: size.width / 5,
                width: (size.width * 4 / 5 ) - 20,
                child: ClipRRect(
                  //borderRadius: BorderRadius.circular(10.0),
                  child: Container(
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('体にいい健康食 part1'),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('2021/11/01'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    )).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: imageSliders(imgList),
    );
  }
}
