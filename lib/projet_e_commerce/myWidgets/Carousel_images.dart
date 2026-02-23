import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:projet/projet_e_commerce/const/images.dart';

class ImageCarousel extends StatelessWidget {
  const ImageCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: MediaQuery.of(context).size.height*0.8,
            height: MediaQuery.of(context).size.width*0.8,
            child: CarouselSlider(
          options: CarouselOptions(autoPlay: true, viewportFraction: 1.0),
          
          items:[
            Image.asset(mesImagesCarrousel[0],fit:BoxFit.cover),
            Image.asset(mesImagesCarrousel[1],fit:BoxFit.cover),
            Image.asset(mesImagesCarrousel[2],fit:BoxFit.cover),
            Image.asset(mesImagesCarrousel[3],fit:BoxFit.cover),
          ]
            ),),
    );
  }
}