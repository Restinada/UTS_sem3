import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:ujian_tengah_semester/navigationbar_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController _controlerPassword = TextEditingController();
  final TextEditingController _controlerEmail = TextEditingController();

  String? email;

  void onSubmit() {
    formKey.currentState!.save();
    if (formKey.currentState!.validate() || formKey.currentState != null) {
      setState(() {
        email = _controlerEmail.text;
      });

      Navigator.of(context).push(
        MaterialPageRoute(builder: (builder) => const NavigationBarPage()),
      );

      _controlerEmail.clear();
      _controlerPassword.clear();
    }
  }

  @override
  void dispose() {
    _controlerPassword.dispose();
    _controlerEmail.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "My Recipe",
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextFormField(
                  controller: _controlerEmail,
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(
                    label: Text("Email"),
                    hintText: 'Masukan Email',
                    icon: Icon(Icons.email),
                  ),
                  validator: (value) {
                    if (value == null ||
                        value.isEmpty ||
                        !value.contains('@')) {
                      return 'Masukan Format Email Dengan Benar';
                    }
                    if (value != 'resti@gmail.com') {
                      return 'Email Salah';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _controlerPassword,
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.next,
                  obscureText: true,
                  decoration: const InputDecoration(
                    label: Text("Password"),
                    hintText: 'Masukan Password',
                    icon: Icon(Icons.password),
                  ),
                  validator: (value) {
                    if (value == null || value.length < 6) {
                      return 'Format Password Salah';
                    }

                    if (value != '123456') {
                      return 'Password Salah';
                    }

                    return null;
                  },
                ),
                const SizedBox(height: 16),
                ElevatedButton.icon(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      onSubmit();
                    } else {
                      AwesomeDialog(
                        context: context,
                        dialogType: DialogType.error,
                        animType: AnimType.scale,
                        showCloseIcon: true,
                        title: 'Warning',
                        desc: 'Invalid email / password',
                        btnOkOnPress: () {},
                      ).show();
                    }
                  },
                  icon: const Icon(Icons.login_sharp),
                  label: const Text("Login"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
