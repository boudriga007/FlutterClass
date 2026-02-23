import 'package:flutter/material.dart';
import 'package:projet/projet_e_commerce/const/images.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            'Catégories',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 10),
        
        SizedBox(
          height: 130, 
          child: Scrollbar(
            thumbVisibility: true, 
            thickness: 6, 
            radius: const Radius.circular(10), 
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              padding: const EdgeInsets.symmetric(horizontal: 8),
              itemBuilder: (context, index) {
                return Container(
                  width: 100,
                  margin: const EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.grey.shade300, width: 2),
                          image: DecorationImage(
                            image: AssetImage(categories[index]['image']!),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        categories[index]['name']!,
                        style: const TextStyle(fontSize: 12),
                        textAlign: TextAlign.center,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}