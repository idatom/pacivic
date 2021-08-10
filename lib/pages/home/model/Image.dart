import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:pacivic/Layout.dart';

class ImagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return ClipRRect(
      child: Container(
        height: SizeConfig.sH * 0.26,
        width: SizeConfig.sW * 0.99,
        padding: const EdgeInsets.symmetric(),
        child: Padding(
          padding: const EdgeInsets.only(
            bottom: 5,
          ),
          child: Builder(
            builder: (context) {
              return CarouselSlider(
                options: CarouselOptions(
                  height: SizeConfig.bH * 50,
                  enlargeCenterPage: false,
                  autoPlay: true,
                ),
                items: imgList
                    .map((item) => Padding(
                          padding: const EdgeInsets.only(right: 2.5, left: 2.5),
                          child: Container(
                            child: Center(
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Image.asset(
                                      item,
                                    ))),
                          ),
                        ))
                    .toList(),
              );
            },
          ),
        ),
      ),
    );
  }
}

final List<String> imgList = [
  "assets/images/page_home/1.jpeg",
  "assets/images/page_home/2.jpeg",
  "assets/images/page_home/3.jpg",
  "assets/images/page_home/4.jpg",
  "assets/images/page_home/5.jpg",
];