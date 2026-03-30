import 'package:flutter/material.dart';
import 'package:projet/projet_e_commerce/model/class_produit.dart';

class ProduitDetailPage extends StatefulWidget {
  final Produit produit;
  const ProduitDetailPage({super.key, required this.produit});

  @override
  State<ProduitDetailPage> createState() => _ProduitDetailPageState();
}

class _ProduitDetailPageState extends State<ProduitDetailPage> {

  Widget infoProduct(String label, String valeur) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2),
      child: Row(
        children: [
          Text('$label : ',
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),
          Expanded(
            child: Text(valeur,
                style: const TextStyle(fontSize: 13),
                overflow: TextOverflow.ellipsis),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final produit = widget.produit;

    return Scaffold(
      appBar: AppBar(
        title: Text(produit.title),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),

      body: Stack(
        children: [
          Container(
            foregroundDecoration: const BoxDecoration(color: Colors.black12),
            height: MediaQuery.of(context).size.height * 0.45,
            width: double.infinity,
            child: Image.network(
              produit.imageUrl,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => Container(
                color: Colors.grey[200],
                child: const Icon(Icons.image_not_supported, size: 60, color: Colors.grey),
              ),
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return const Center(child: CircularProgressIndicator());
              },
            ),
          ),

          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            padding: const EdgeInsets.only(top: 16, bottom: 20),
            child: Column(
              children: [
                const SizedBox(height: 250.0),

                Container(
                  color: Colors.grey[300],
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          produit.title,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          '${produit.price} TND',
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                              fontSize: 18),
                        ),
                      ),

                      const Divider(),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          produit.description,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),

                      const Divider(),

                      infoProduct('Brand', produit.brand),
                      infoProduct('Quantity', produit.quantity.toString()),
                      infoProduct('Category', produit.produitCategoryName),

                      const SizedBox(height: 16),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),

      bottomNavigationBar: SizedBox(
        height: 56,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('${produit.title} ajouté au panier !'),
                    backgroundColor: Colors.green,
                  ));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink,
                  foregroundColor: Colors.white,
                  shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                ),
                child: const Text('Add to Cart'),
              ),
            ),

            Expanded(
              flex: 2,
              child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('Achat de ${produit.title} confirme !'),
                    backgroundColor: Colors.blue,
                  ));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                ),
                child: const Text('Acheter'),
              ),
            ),

            IconButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text('${produit.title} ajouté aux favoris !'),
                  backgroundColor: Colors.purple,
                ));
              },
              icon: const Icon(Icons.favorite_border, color: Colors.red, size: 28),
            ),
          ],
        ),
      ),
    );
  }
}