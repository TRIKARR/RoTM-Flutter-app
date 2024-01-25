// ignore_for_file: non_constant_identifier_names, avoid_print, duplicate_ignore

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:rotm/assets/constants.dart';
import 'package:rotm/userdata.dart';
import 'package:rotm/views/auth/signup_page.dart';
import 'package:http/http.dart' as http;
import 'package:rotm/views/user/bottom_nav_bar.dart';

// ignore: must_be_immutable
class UserAuthPage extends StatelessWidget {
  TextEditingController RegbrotmIdController = TextEditingController();
  TextEditingController RegbrotmPasswordController = TextEditingController();
  void getRequest() async {
    var url = Uri.parse('${EndPoint}login');
    var queryParams = {
      "username": RegbrotmIdController.text,
      "password": RegbrotmPasswordController.text,
    };
    var response = await http.get(url.replace(queryParameters: queryParams));
    BRoTM_UserID = response.body.toString();
    print(response.body.toString());
    print(BRoTM_UserID);
    print(queryParams.toString());
  }

  // ignore: duplicate_ignore
  void ExtractUserRequest() async {
    var url = Uri.parse('${EndPoint}extract');
    var queryParams = {"id": BRoTM_UserID};
    var response = await http.get(url.replace(queryParameters: queryParams));
    var responseData =
        jsonDecode(response.body); // Add this line to parse the JSON response
    var repoData = responseData["report"];
    var temp = responseData["temp"];
    var resp = responseData["resp"];
    // Store the "temp" array in a variable
    UserRespData = resp;
    UserTempData = temp;
    UserRepoData = repoData;
    // ignore: avoid_print
    print(queryParams.toString());
  }

  UserAuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [g4, g3, g2, g2]),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 0.0),
                  child: Lottie.asset(
                    "lib/assets/others/login.json",
                    height: 350,
                    width: 320,
                  ),
                ),
                Text("BRoTM Login",
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
                    controller: RegbrotmIdController,
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
                    controller: RegbrotmPasswordController,
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
                      hintText: "BroTM-Secret",
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
                Padding(
                  padding:
                      const EdgeInsets.only(right: 35.0, top: 10, bottom: 10),
                  child: Container(
                    alignment: Alignment.topRight,
                    child: Text(
                      "Forgot Password?",
                      style: GoogleFonts.orbitron(
                        fontWeight: FontWeight.bold, // Make the font bold
                        color: const Color.fromARGB(
                            255, 51, 1, 117), // Set the font color
                      ),
                    ),
                  ),
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
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                              builder: (context) => const BottomNavComponent()),
                        );
                        getRequest();
                        ExtractUserRequest();
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
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      const Expanded(
                          child: Divider(
                        color: Colors.black,
                      )),
                      Text("Continue with",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.getFont(
                            'Orbitron',
                            fontSize: 15,
                            color: const Color.fromARGB(255, 51, 1, 117),
                            fontWeight: FontWeight.bold,
                          )),
                      const Expanded(
                          child: Divider(
                        color: Colors.black,
                      )),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 80,
                      ),
                      child: Container(
                        height: 70,
                        width: 70,
                        padding: const EdgeInsets.all(
                            8.0), // Add padding to prevent the image from touching the borders
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(
                              255, 18, 31, 29), // Set the background color
                          border: Border.all(
                            color: const Color.fromARGB(255, 255, 255, 255),
                          ),
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                            image: AssetImage("lib/assets/images/logo.png"),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Container(
                        height: 70,
                        width: 70,
                        padding: const EdgeInsets.all(
                            8.0), // Add padding to prevent the image from touching the borders
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(
                              255, 18, 31, 29), // Set the background color
                          border: Border.all(
                            color: const Color.fromARGB(255, 255, 255, 255),
                          ),
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                            image: AssetImage("lib/assets/images/google.png"),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 10,
                      ),
                      child: Container(
                        height: 70,
                        width:
                            70, // Add padding to prevent the image from touching the borders
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(
                              255, 18, 31, 29), // Set the background color
                          border: Border.all(
                            color: const Color.fromARGB(255, 255, 255, 255),
                          ),
                          borderRadius: BorderRadius.circular(34),
                          image: const DecorationImage(
                            image: AssetImage("lib/assets/images/p.jpg"),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    const Expanded(
                        child: Divider(
                      color: Colors.black,
                    )),
                    Text("Not a BRoTM yet ?",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.getFont(
                          'Orbitron',
                          fontSize: 15,
                          color: const Color.fromARGB(255, 51, 1, 117),
                          fontWeight: FontWeight.bold,
                        )),
                    const Expanded(
                        child: Divider(
                      color: Colors.black,
                    )),
                  ],
                ),
                const SizedBox(
                  height: 10,
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
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignUpPage()),
                        );
                      },
                      child: const Text(
                        "REGISTER",
                        style: TextStyle(
                          fontFamily: 'Orbitron',
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
