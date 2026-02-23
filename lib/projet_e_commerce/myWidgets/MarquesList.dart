import 'package:flutter/material.dart';
import 'package:projet/projet_e_commerce/const/images.dart';

class MarquesList extends StatelessWidget {
  const MarquesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            'Marques',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 10),
        
        SizedBox(
          height: 120, 
          child: Scrollbar(
            thumbVisibility: true,
            thickness: 6,
            radius: const Radius.circular(10),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: marques.length,
              padding: const EdgeInsets.symmetric(horizontal: 8),
              itemBuilder: (context, index) {
                return Container(
                  width: 100,
                  margin: const EdgeInsets.symmetric(horizontal: 8),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey.shade300),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            marques[index]['image']!,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Text(
                        marques[index]['name']!,
                        style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(height: 5),
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