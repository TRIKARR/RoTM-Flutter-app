import 'package:flutter/material.dart';
import 'package:rotm/views/auth/auth_page.dart';
import 'package:rotm/views/intropages/intropage1.dart';
import 'package:rotm/views/intropages/intropage2.dart';
import 'package:rotm/views/intropages/intropage3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final PageController _controller = PageController();
  bool _isLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                _isLastPage = (index == 2);
              });
            },
            children: const [Page1(), Page2(), Page3()],
          ),
          Container(
              alignment: const Alignment(0, 0.9),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                      onTap: () => {
                            _controller.animateToPage(2,
                                duration: const Duration(milliseconds: 400),
                                curve: Easing.standard)
                          },
                      child: const Text("Skip")),
                  SmoothPageIndicator(controller: _controller, count: 3),
                  _isLastPage
                      ? GestureDetector(
                          onTap: () => {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const UserAuthPage())),
                              },
                          child: const Text("Done"))
                      : GestureDetector(
                          onTap: () => {
                                _controller.nextPage(
                                    duration: const Duration(milliseconds: 400),
                                    curve: Easing.standard)
                              },
                          child: const Text("Next"))
                ],
              )),
        ],
      ),
    );
  }
}
