import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserChatBot extends StatelessWidget {
  const UserChatBot({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: 4,
            ),
            borderRadius: BorderRadius.circular(30),
            color: const Color.fromARGB(255, 0, 221, 255),
          ),
          height: 100,
          width: 100,
          child: Column(
            children: [
              Image.asset(
                "lib/assets/animated/chat-bot-unscreen.gif",
                height: 110,
                width: 110,
              ),
              Center(
                child: Row(
                  children: [
                    const SizedBox(
                      width: 40,
                    ),
                    Column(
                      children: [
                        Text(
                          "HEALTH",
                          style: GoogleFonts.getFont(
                            'Orbitron',
                            fontSize: 19,
                            color: const Color.fromARGB(255, 0, 0, 0),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Center(
                          child: Text(
                            "BOT",
                            style: GoogleFonts.getFont(
                              'Orbitron',
                              fontSize: 19,
                              color: const Color.fromARGB(255, 0, 0, 0),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
