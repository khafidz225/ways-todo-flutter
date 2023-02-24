import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ways_todo/register.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  final email = TextEditingController();
  final name = TextEditingController();
  final password = TextEditingController();

  String userEmail = "";
  String userName = "";
  String userPassword = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
            child: Center(
          child: SizedBox(
            width: 320,
            child: Column(children: [
              Container(
                  margin: EdgeInsets.only(top: 40),
                  child: Image.asset("assets/image/iconlogin.png")),
              Container(
                margin: EdgeInsets.only(top: 30, bottom: 20),
                child: Row(
                  children: [
                    Text(
                      "Login",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Form(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: email,
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value == "") {
                            return "Email tidak boleh kosong";
                          }
                          // if (value != null && ) {}
                        },
                        decoration: const InputDecoration(
                            labelText: "Email",
                            prefixIcon: Icon(Icons.mail),
                            border: OutlineInputBorder()),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: password,
                        obscureText: true,
                        validator: (value) {
                          if (value == "") {
                            return "Password tidak boleh kosong";
                          }
                          if (value != null && value.length < 7) {
                            return 'Minimal 7 karakter password';
                          } else {
                            return null;
                          }
                        },
                        decoration: const InputDecoration(
                            labelText: "Password",
                            prefixIcon: Icon(Icons.lock),
                            border: OutlineInputBorder()),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 100),
                        // decoration: ,
                        child: Column(
                          children: [
                            Container(
                              width: 320,
                              child: ElevatedButton(
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    setState(() {
                                      userEmail = email.text;
                                      userPassword = password.text;
                                    });
                                    print(userEmail);
                                    print(userPassword);
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xffFF5555)),
                                child: const Text(
                                  "Login",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text("New Users ?"),
                                TextButton(
                                    onPressed: () => Navigator.of(context)
                                            .push(MaterialPageRoute(
                                          builder: (context) => Register(),
                                        )),
                                    child: const Text(
                                      "Register",
                                      style: TextStyle(
                                          color: Color(0xffFF5555),
                                          fontWeight: FontWeight.bold),
                                    ))
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ))
            ]),
          ),
        )),
      ),
    );
  }
}
