// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:rotm/assets/constants.dart';
import 'package:http/http.dart' as http;

class SignUpPage extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController brotmIdController = TextEditingController();
  TextEditingController brotmPasswordController = TextEditingController();
  TextEditingController confirmBrotmPasswordController =
      TextEditingController();
  void postRequest() async {
    var url = Uri.parse('http://192.168.0.241:3000/signup');
    var data = {
      "Email": emailController.text,
      "Username": brotmIdController.text,
      "Password": brotmPasswordController.text,
      "ConfirmPassword": confirmBrotmPasswordController.text,
    };
    var response = await http.post(url, body: data);
    // ignore: avoid_print
    print(response.body.toString());
  }

  SignUpPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [g1, g2, g3, g1]),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Lottie.asset("lib/assets/others/Robot.json",
                      height: 400, width: 400),
                ),
                Text("BRoTM SignUp",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.getFont(
                      'Orbitron',
                      fontSize: 35,
                      color: const Color.fromARGB(255, 51, 1, 117),
                      fontWeight: FontWeight.bold,
                    )),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: TextField(
                    controller: emailController,
                    style: GoogleFonts.getFont(
                      'Orbitron',
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    decoration: const InputDecoration(
                      fillColor: Color.fromARGB(255, 157, 240, 230),
                      filled: true,
                      hintText: "Email Address",
                      prefixIcon: Icon(Icons.mail),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: TextField(
                    controller: brotmIdController,
                    style: GoogleFonts.getFont(
                      'Orbitron',
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    decoration: const InputDecoration(
                      fillColor: Color.fromARGB(255, 157, 240, 230),
                      filled: true,
                      hintText: "BroTM-ID",
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: TextField(
                    controller: brotmPasswordController,
                    obscureText: true,
                    style: GoogleFonts.getFont(
                      'Orbitron',
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    decoration: const InputDecoration(
                      fillColor: Color.fromARGB(255, 157, 240, 230),
                      filled: true,
                      hintText: "BroTM-Password",
                      prefixIcon: Icon(Icons.key),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: TextField(
                    controller: confirmBrotmPasswordController,
                    obscureText: true,
                    style: GoogleFonts.getFont(
                      'Orbitron',
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    decoration: const InputDecoration(
                      fillColor: Color.fromARGB(255, 157, 240, 230),
                      filled: true,
                      hintText: "Confirm BroTM-Password",
                      prefixIcon: Icon(Icons.lock),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: TextButton(
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor:
                            const Color.fromARGB(255, 28, 215, 194),
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                            side: BorderSide(color: Colors.black)),
                      ),
                      onPressed: () {
                        postRequest();
                      },
                      child: const Text(
                        "PROCEED",
                        style: TextStyle(
                          fontFamily: 'Orbitron',
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
