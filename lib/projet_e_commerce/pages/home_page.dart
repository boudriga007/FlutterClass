import 'package:flutter/material.dart';
import 'package:projet/projet_e_commerce/myWidgets/Carousel_images.dart';
import 'package:projet/projet_e_commerce/myWidgets/CategoriesList.dart';
import 'package:projet/projet_e_commerce/myWidgets/MarquesList.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const ImageCarousel(),
          
          const SizedBox(height: 20),
          
          const CategoriesList(),
          
          const SizedBox(height: 20),
          
          const MarquesList(),
          
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}