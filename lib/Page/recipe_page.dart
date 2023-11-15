import 'package:flutter/material.dart';
import 'package:ujian_tengah_semester/Page/detail_page.dart';
import 'package:ujian_tengah_semester/models/recipe_model.dart';

class RecipePage extends StatefulWidget {
  const RecipePage({super.key});

  @override
  State<RecipePage> createState() => _HomePageState();
}

class _HomePageState extends State<RecipePage> {
  List<RecipeModel> dataInventory = [
    RecipeModel(
      namaBarang: "Bubur Ayam",
      image: "assets/bubur ayam.png",
      stok: 100,
      kondisi: "Baru",
      deskripsi:
          "Bubur ayam dengan kuah kaldu ayam dan rempah rempah khas Madura.Dengan taburan suwiran ayam dan sayur mayur.",
    ),
    RecipeModel(
      namaBarang: "Nasi Goreng.png",
      image: "assets/nasi goreng.png",
      stok: 100,
      kondisi: "Baru",
      deskripsi:
          "Nasi yang digoreng dengan bumbu bumbu pilihan ditambah dengan rasa pedas dari cabai yang ditanam dan dirawat seperti anak sendiri.",
    ),
    RecipeModel(
      namaBarang: "Lontong sayur.png",
      image: "assets/lontong sayur.png",
      stok: 200,
      kondisi: "Baru",
      deskripsi:
          "Lontong sayur adalah makanan yang sangat bernilai gizi karena dibuat tanpa bahan pengawet dan pewarna makanan, bebas borak dan formalin sehingga bagus untuk si kecil.",
    ),
    RecipeModel(
      namaBarang: "Roti panggang.png",
      image: "assets/roti panggang.png",
      stok: 500,
      kondisi: "Baru",
      deskripsi:
          "Roti yang dipanggang dengan api kecil sehingga matang merata dan pas.",
    ),
    RecipeModel(
      namaBarang: "Oatmeal",
      image: "assets/oatmeal.png",
      stok: 50,
      kondisi: "Baru",
      deskripsi: "Makanan sehat cocok untuk diet dan vegetarian.",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: dataInventory.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
        itemBuilder: (context, index) {
          final data = dataInventory[index];
          return InkWell(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (builder) => DetailPage(
                  namaBarang: data.namaBarang,
                  image: data.image,
                  stok: data.stok,
                  deskripsi: data.deskripsi,
                  kondisi: data.kondisi,
                ),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Expanded(
                    child: Image.asset(data.image),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(data.namaBarang),
                      Text(data.stok.toString()),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
