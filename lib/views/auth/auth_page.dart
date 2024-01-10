import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rotm/assets/constants.dart';
import 'package:rotm/views/auth/signup_page.dart';

class UserAuthPage extends StatelessWidget {
  const UserAuthPage({super.key});

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
                const Padding(
                  padding: EdgeInsets.only(top: 60.0),
                  child:
                      Image(image: AssetImage("lib/assets/images/login.png")),
                ),
                const SizedBox(
                  height: 10,
                ),
                // Text("Welcome Back BRoTM",
                //     textAlign: TextAlign.center,
                //     style: GoogleFonts.getFont(
                //       'Orbitron',
                //       fontSize: 25,
                //       color: const Color.fromARGB(255, 51, 1, 117),
                //       fontWeight: FontWeight.bold,
                //     )),
                // const SizedBox(
                //   height: 10,
                // ),
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
                      onPressed: () {},
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
