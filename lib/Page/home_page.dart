import 'package:flutter/material.dart';
import 'package:ujian_tengah_semester/Page/recipe_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Image.asset("assets/food.png"),
          ElevatedButton.icon(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (builder) => const RecipePage(),
                ),
              );
            },
            icon: const Icon(Icons.login),
            label: const Text("Explore Recipe"),
          )
        ],
      ),
    );
  }
}
