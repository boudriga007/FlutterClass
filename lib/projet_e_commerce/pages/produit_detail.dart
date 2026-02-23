import 'package:flutter/material.dart';

class ProduitDatailPage extends StatefulWidget {
  const ProduitDatailPage({super.key});

  @override
  State<ProduitDatailPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ProduitDatailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("page de produit detail"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Text("To DO....."),
    );
  }
}
