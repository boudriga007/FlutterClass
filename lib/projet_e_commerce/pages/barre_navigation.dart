import 'package:flutter/material.dart';
class BarreNavigationScreen extends StatefulWidget {
  const BarreNavigationScreen({super.key});

  @override
  State<BarreNavigationScreen> createState() => _BarreNavigationScreenState();
}

class _BarreNavigationScreenState extends State<BarreNavigationScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(128, 0, 0, 0),
        showSelectedLabels: true,
        selectedLabelStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.amberAccent,
        unselectedItemColor: Colors.deepOrangeAccent,
        currentIndex: 2,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Accueil"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Liste Produit"),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Mon Panier"),

                BottomNavigationBarItem(icon: Icon(Icons.home), label: "mon Profil"),
      ]),
    );
  }
}