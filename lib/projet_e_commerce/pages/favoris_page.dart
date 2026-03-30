import 'package:flutter/material.dart';

class FavorisPage extends StatefulWidget {
  const FavorisPage({super.key});

  @override
  State<FavorisPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<FavorisPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("page de favoris"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Text("To DO....."),
    );
  }
}
