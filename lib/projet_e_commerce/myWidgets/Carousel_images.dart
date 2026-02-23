import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:projet/projet_e_commerce/const/images.dart';

class ImageCarousel extends StatelessWidget {
  const ImageCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        autoPlay: true,
        viewportFraction: 1.0,
        height: 200,
        enlargeCenterPage: false,
      ),
      items: mesImagesCarrousel.map((imagePath) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            );
          },
        );
      }).toList(),
    );
  }
}