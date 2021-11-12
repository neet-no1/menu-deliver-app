import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Slick extends StatelessWidget {
//  const Slick({Key? key}) : super(key: key);

  final double height;
  const Slick(this.height);

  @override
  Widget build(BuildContext context) {
    return ComplicatedImageDemo(height);
  }
}

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

final List<Widget> imageSliders = imgList
    .map((item) => Container(
  child: Container(
    margin: EdgeInsets.all(5.0),
    child: ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(5.0)),
      child: Stack(
        children: <Widget>[
          Image.network(item, fit: BoxFit.cover, width: 1000.0),
          Positioned(
            bottom: 0.0,
            left: 0.0,
            right: 0.0,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(200, 0, 0, 0),
                    Color.fromARGB(0, 0, 0, 0)
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
              padding: EdgeInsets.symmetric(
                  vertical: 10.0, horizontal: 20.0),
              child: Text(
                '生クリーム大福（9個分）',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  ),
))
    .toList();

class ComplicatedImageDemo extends StatelessWidget {

  final double height;
  const ComplicatedImageDemo(this.height);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: CarouselSlider(
          options: CarouselOptions(
            height: height,
            autoPlay: true,
            aspectRatio: 2.0,
            enlargeCenterPage: true,
          ),
          items: imageSliders,
        ),
      ),
    );
  }
}
