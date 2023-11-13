import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // Todo: 1. Deklarasikan variabel
  final TextEditingController _usernameControler = TextEditingController();
  final TextEditingController _passwordControler = TextEditingController();

  String _errorText = '';
  bool _isSignedIn = false;
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      //Todo: 2. Pasang AppBar
        appBar: AppBar(title: Text('Login'),),
        //Todo: 3. Pasang Body
        body: Center(
          child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Form(
                    child: Column(
                      //Todo: 4. Atur mainAxisAligment dan crossAxisAligment
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        //Todo: 5. Pasang TextFormField Nama Pengguna
                        TextFormField(
                          controller: _usernameControler,
                          decoration: InputDecoration(
                            labelText: "Nama Pengguna",
                            border: OutlineInputBorder(),
                          ),
                        ),
                        //Todo: 6. Pasang TextFormField Kata Sandi
                        SizedBox(height: 28),
                        TextFormField(
                          controller: _passwordControler,
                          decoration: InputDecoration(
                            labelText: "Kata Sandi",
                            errorText: _errorText.isNotEmpty ? _errorText : null,
                            border: OutlineInputBorder(),
                            suffixIcon: IconButton(
                              onPressed: (){},
                              icon: Icon(
                                _obscurePassword ? Icons.visibility_off
                                    :Icons.visibility,
                              ),),
                          ),
                          obscureText: _obscurePassword,
                        ),
                        //Todo: 7. Pasang ElevateButton Sign In
                        SizedBox(height: 28),
                        ElevatedButton(
                            onPressed: (){},
                            child: Text("Login")),
                        //Todo: 8. Pasang TextButton Sign Up
                        SizedBox(height: 18),
                        TextButton(
                            onPressed: (){},
                            child: Text("Belum punya akun? Daftar di sini.")),

                        RichText(
                            text: TextSpan(
                              text: 'Belum punya akun ? ',
                              style: TextStyle(fontSize: 16, color: Colors.lightBlueAccent),
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'Daftar di sini.',
                                  style: TextStyle(
                                      color: Colors.blue,
                                      decoration: TextDecoration.underline,
                                      fontSize: 16
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {},
                                ),
                              ],
                            )
                        ),
                      ],
                    )),
              )),
        ));
  }
}