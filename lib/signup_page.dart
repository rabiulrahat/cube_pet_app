import 'package:cube_pet_app/login_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Component/pet_textfield.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
               const Padding(
              padding: EdgeInsets.all(70.0),
              child: Align(
                alignment: Alignment.topCenter,
                child: Image(
                  image: AssetImage('assets/cat.png'),
                  height: 120,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Column(
              children: [
                // const Padding(padding: EdgeInsets.all(8)),
               const Padding(
                  padding:  EdgeInsets.all(8.0),
                  child:  Column(
                    children: [
                      Text(
                        'Welcome to',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 15.7,
                        ),
                      ),
                      Text(
                        'Pet Shop',
                        style: TextStyle(
                            fontFamily: 'MoreSugar',
                            fontSize: 40.3,
                            color: Color.fromARGB(255, 215, 111, 32)),
                      ),

                    ],
                  ),
                ),
                const Padding(padding: EdgeInsets.symmetric(vertical: 35)),
                Stack(
                  // fit: StackFit.loose,
                  children: [


                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 191, 89, 43),
                          borderRadius: BorderRadius.circular(20),
                          // border: Border.all(color: Colors.black),
                        ),
                        // alignment: MainAxisAlignment.center,
                        height: 460,
                        width: 500,
                      ),
                    ),

                    Column(
                      //  verticalDirection :VerticalDirection.down,
                      children: <Widget>[
                        const Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(20.0),
                              child: Text(
                                'Sign Up',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 31.6,
                                    color: Colors.white),
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(right: 150.0)),
                            // Image(image: AssetImage('assets/font_leg.png'),
                            // width: 50,
                            // height: 20,
                            // ),
                            Icon(
                              IconData(0xe4a1, fontFamily: 'MaterialIcons'),
                              color: Colors.white,
                              size: 40,
                            )
                          ],
                        ),
                        const Padding(padding: EdgeInsets.all(8.0)),
                        // const SizedBox(height: 20,width: 29),
                        PetTextfield(
                            controller: usernameController,
                            hinText: 'Oliva Wilson',
                            obscureText: false,
                            label: 'Name'),
                        const Padding(padding: EdgeInsets.all(8.0)),

                        PetTextfield(
                            controller: usernameController,
                            hinText: 'name@gmail.com',
                            obscureText: false,
                            label: 'Email'),
                        const Padding(padding: EdgeInsets.all(8.0)),
                        PetTextfield(
                            controller: passwordController,
                            hinText: '123xxx',
                            obscureText: true,
                            label: 'Password'),
                        const Padding(padding: EdgeInsets.all(8.0)),

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Container(
                              width: 100,
                              height: 40,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 254, 133, 79),
                                borderRadius: BorderRadius.circular(15),
                                // border: Border.all(color: Colors.black),
                              ),
                              child: MaterialButton(
                                minWidth: 4,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  side: const BorderSide(
                                    color: Color.fromARGB(255, 244, 243, 243),
                                    width: 3,
                                  ),
                                ),
                                onPressed: () {},
                                child: const Center(
                                  child: Text(
                                    "Next",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(179, 16, 2, 2)),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Padding(padding: EdgeInsets.all(8.0)),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 60.0),
                          child: Row(
                            children: [
                              const Text("Already have an account? ",
                              style:   TextStyle(
                                    fontFamily: 'Poppins',
                                    // fontSize: 31.6,
                                    color: Colors.white),
                              ),
                              GestureDetector(
                                  child: const Text(
                                    'Sign in',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 255, 255, 255)),
                                  ),
                                  onTap: () {
                                    print('tapped');
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => LoginPage()));
                                  })
                            ],
                          ),
                        ),

                      ],
                    ),


                  ],
                ),

              ],
            ),


          ],
        ),
      ),
    );
  }
}
