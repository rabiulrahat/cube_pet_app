import 'package:cube_pet_app/Pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'signup_page.dart';

class SlidePage extends StatelessWidget {
  SlidePage({Key? key}) : super(key: key);
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: SmoothPageIndicator(
                      controller: _controller,
                      count: 2,
                      axisDirection: Axis.horizontal,
                      effect: const SlideEffect(
                        activeDotColor: Colors.orange,
                        dotHeight: 10,
                        dotColor: Color.fromARGB(26, 31, 31, 31),
                        dotWidth: 10,
                      ),
                    ),
                  ),

                ],
              ),
            ),
            // const SizedBox(height: 50),
            Expanded(
              child: PageView(
                controller: _controller,
                children: const [
                  SignUpPage(),
                  LoginPage(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
