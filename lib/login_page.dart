import 'package:cube_pet_app/Component/pet_textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              Column(
                children: [
                  const Padding(padding: EdgeInsets.all(8)),
                  const Column(
                    children: [
                      Text(
                        'sing in to continue',
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
                          height: 550,
                          width: 500,
                        ),
                      ),
                      Column(
                        //  verticalDirection :VerticalDirection.down,
                        children: [
                          const Row(
                            children: [
                              Padding(padding: EdgeInsets.all(20.0)),
                              Icon(
                                IconData(0xe4a1, fontFamily: 'MaterialIcons'),
                                color: Colors.white,
                                size: 40,
                              ),
                              Padding(padding: EdgeInsets.all(40.0)),
                            ],
                          ),
                          const Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(20.0),
                                child: Text(
                                  'Log in',
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 31.6,
                                      color: Colors.white),
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(right: 200.0)),
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
                              hinText: 'name@gmail.com',
                              obscureText: false,
                              label: 'Email'),
                          const Padding(padding: EdgeInsets.all(8.0)),
                          PetTextfield(
                              controller: passwordController,
                              hinText: '123xxx',
                              obscureText: true,
                              label: 'Password'),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                const Text("Don't have any account? "),
                                GestureDetector(
                                    child: const Text(
                                      'register',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.blueAccent),
                                    ),
                                    onTap: () {
                                      print('tapped');
                                    })
                              ],
                            ),
                          ),
                          Stack(
                            children: [
                              Container(
                                width: 500,
                                height: 50,
                                decoration: BoxDecoration(
                                    color: const Color.fromARGB(255, 254, 133, 79),
                                  borderRadius: BorderRadius.circular(15),
                                  // border: Border.all(color: Colors.black),
                                ),

                              ),
                              Center(
                                child: Container(
                                  width: 100,
                                  height: 50,
                                   decoration: BoxDecoration(
                                    color: const Color.fromARGB(255, 254, 133, 79),
                                    borderRadius: BorderRadius.circular(15),
                                    // border: Border.all(color: Colors.black),
                                  ),
                                  child: MaterialButton(
                                    minWidth: 4,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      side:
                                          const BorderSide(color: Color.fromARGB(255, 244, 243, 243),
                                          width: 3,
                                          ),
                                    ),                                    onPressed: () {},
                                    child: const Center(
                                      child: Text(
                                        "Login",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Color.fromARGB(179, 16, 2, 2)),
                                      ),
                                    ),
                                  ),
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
              const Padding(
                padding: EdgeInsets.all(100.0),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Image(
                    image: AssetImage('assets/cat.png'),
                    height: 150,
                    fit: BoxFit.fill,
                    // Icons.lock_clock,
                    // size: 100,
                    // color: Color.fromARGB(255, 10, 211, 211),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

///////////////////////
///
///
///
// child: Column(
//                           //  verticalDirection :VerticalDirection.down,
//                           children: [
//                             const Row(
//                               children: [
//                                 Padding(padding: EdgeInsets.all(20.0)),
//                                 Icon(
//                                   IconData(0xe4a1, fontFamily: 'MaterialIcons'),
//                                   color: Colors.white,
//                                   size: 40,
//                                 ),
//                                 Padding(padding: EdgeInsets.all(40.0)),
//                               ],
//                             ),
//                             const Row(
//                               children: [
//                                 Padding(
//                                   padding: EdgeInsets.all(20.0),
//                                   child: Text(
//                                     'Log in',
//                                     style: TextStyle(
//                                         fontFamily: 'Poppins',
//                                         fontWeight: FontWeight.bold,
//                                         fontSize: 31.6,
//                                         color: Colors.white),
//                                   ),
//                                 ),
//                                 Padding(padding: EdgeInsets.only(right: 200.0)),
//                                 // Image(image: AssetImage('assets/font_leg.png'),
//                                 // width: 50,
//                                 // height: 20,
//                                 // ),
//                                 Icon(
//                                   IconData(0xe4a1, fontFamily: 'MaterialIcons'),
//                                   color: Colors.white,
//                                   size: 40,
//                                 )
//                               ],
//                             ),
//                             const Padding(padding: EdgeInsets.all(8.0)),
//                             // const SizedBox(height: 20,width: 29),
//                             PetTextfield(
//                                 controller: usernameController,
//                                 hinText: 'name@gmail.com',
//                                 obscureText: false,
//                                 label: 'Email'),
//                             const Padding(padding: EdgeInsets.all(8.0)),
//                             PetTextfield(
//                                 controller: passwordController,
//                                 hinText: '123xxx',
//                                 obscureText: true,
//                                 label: 'Password'),
//                             Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child: Row(
//                                 children: [
//                                   const Text("Don't have any account? "),
//                                   GestureDetector(
//                                       child: const Text(
//                                         'register',
//                                         style: TextStyle(
//                                             fontWeight: FontWeight.bold,
//                                             color: Colors.blueAccent),
//                                       ),
//                                       onTap: () {
//                                         print('tapped');
//                                       })
//                                 ],
//                               ),
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child: FloatingActionButton(
//                                 onPressed: () {},
//                                 backgroundColor: Colors.amber,
//                                 child: const Center(
//                                   child: Text(
//                                     "Login",
//                                     style: TextStyle(
//                                         fontSize: 20,
//                                         fontWeight: FontWeight.bold,
//                                         color: Color.fromARGB(179, 16, 2, 2)),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),

///image
///
///  SizedBox(
                    //   child: const Image(
                    //     image: AssetImage('assets/cat.png'),
                    //     fit: BoxFit.cover,
                    //     // Icons.lock_clock,
                    //     // size: 100,
                    //     // color: Color.fromARGB(255, 10, 211, 211),
                    //   ),
                    // ),
