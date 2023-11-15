import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    String nama = "Resti Aisyah Qotrunada";
    var jurusan = "Application Software Engineering";
    var domisili = "Yogyakarta";
    var email = "resti123@gmail.com";
    return Scaffold(
      appBar: AppBar(
        title: const Text("MyRecipe"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.greenAccent,
              boxShadow: const [
                BoxShadow(
                  color: Colors.black,
                  offset: Offset(3, 6),
                  blurRadius: 10,
                )
              ],
              border: Border.all(color: Colors.white, width: 3),
            ),
            height: 500,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://w7.pngwing.com/pngs/262/907/png-transparent-login-user-avatar-person-users-profile-free-system-and-user-interface-icon.png"),
                          fit: BoxFit.fill),
                    ),
                    width: 100,
                    height: 100,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    nama,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    jurusan,
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Email : ",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        email,
                        style: const TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Text(
                    domisili,
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
