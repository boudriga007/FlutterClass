import 'package:flutter/material.dart';
import 'package:projet/projet_e_commerce/pages/home_page.dart';
import 'package:projet/projet_e_commerce/pages/produit_list.dart';
import 'package:projet/projet_e_commerce/pages/panier.dart';
import 'package:projet/projet_e_commerce/pages/page_user.dart';

class BarreNavigationScreen extends StatefulWidget {
  const BarreNavigationScreen({super.key});

  @override
  State<BarreNavigationScreen> createState() => _BarreNavigationScreenState();
}

class _BarreNavigationScreenState extends State<BarreNavigationScreen> {
  
  int _selectedIndex = 0;
  
  final List<Widget> _pages = [
    const HomePage(),
    const ProduitListPage(), 
    const PanierPage(),     
    const UserInfoPage(),        
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index; 
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home), 
            label: "Accueil"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: "Produits"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Panier"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profil"
          ),
        ],
      ),
    );
  }
}