import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:ways_todo/screen/auth/login.dart';

import '../../Components/form_email.dart';
import '../../Components/form_password.dart';

class Register extends StatefulWidget {
  Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();
  final email = TextEditingController();
  final name = TextEditingController();
  final password = TextEditingController();

  String userEmail = "";
  String userName = "";
  String userPassword = "";
  bool shouldPop = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WillPopScope(
        onWillPop: () async {
          Navigator.pushNamed(context, '/');
          return shouldPop;
        },
        child: Scaffold(
          body: SafeArea(
              child: Center(
            child: SizedBox(
              width: 320,
              child: Column(children: [
                Container(
                    margin: const EdgeInsets.only(top: 40),
                    child: Image.asset("assets/image/iconlogin.png")),
                Container(
                  margin: const EdgeInsets.only(top: 30, bottom: 20),
                  child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text(
                        "Register",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Form(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    key: _formKey,
                    child: Column(
                      children: [
                        FormEmail(email: email),
                        const SizedBox(
                          height: 20,
                        ),
                        form_name(name: name),
                        const SizedBox(
                          height: 20,
                        ),
                        Form_password(password: password),
                        Container(
                          margin: const EdgeInsets.only(top: 50),
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
                                        userName = name.text;
                                        userPassword = password.text;
                                      });
                                      Navigator.pushNamed(context, '/login');
                                      print(userEmail);
                                      print(userName);
                                      print(userPassword);
                                    }
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(0xffFF5555)),
                                  child: const Text(
                                    "Register",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text("Joined us before ?"),
                                  TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, '/login'),
                                      child: const Text(
                                        "Login",
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
      ),
    );
  }
}

// ignore: camel_case_types
class form_name extends StatelessWidget {
  const form_name({
    Key? key,
    required this.name,
  }) : super(key: key);

  final TextEditingController name;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: name,
      validator: (value) {
        if (value == "") {
          return "Name tidak boleh kosong";
        }
      },
      decoration: const InputDecoration(
          labelText: "Name",
          prefixIcon: Icon(Icons.account_circle),
          border: OutlineInputBorder()),
    );
  }
}
