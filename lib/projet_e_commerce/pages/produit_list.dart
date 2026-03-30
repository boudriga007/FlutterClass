import 'package:flutter/material.dart';
import 'package:projet/projet_e_commerce/data/list_produits.dart';
import 'package:projet/projet_e_commerce/model/class_produit.dart';
import 'package:projet/projet_e_commerce/myWidgets/un_produit_tmp.dart';
import 'package:projet/projet_e_commerce/pages/produit_detail.dart';

class ProduitListPage extends StatefulWidget {
  const ProduitListPage({super.key});

  @override
  State<ProduitListPage> createState() => _ProduitListPageState();
}

class _ProduitListPageState extends State<ProduitListPage> {
  final List<Produit> _produits = AllProductData().Produits;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Liste des Produits',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        iconTheme: const IconThemeData(color: Colors.white),
      ),

      body: GridView.builder(
        padding: const EdgeInsets.all(8),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          childAspectRatio: 0.55,
        ),
        itemCount: _produits.length,
        itemBuilder: (context, index) {
          final Produit produit = _produits[index];

          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProduitDetailPage(produit: produit),
                ),
              );
            },
            child: Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              clipBehavior: Clip.antiAlias,
              child: WidgetProduit(produit: produit),
            ),
          );
        },
      ),
    );
  }
}