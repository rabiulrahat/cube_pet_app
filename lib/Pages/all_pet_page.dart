import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PetPage extends StatefulWidget {
  const PetPage({super.key});

  @override
  State<PetPage> createState() => _PetPageState();
}

class _PetPageState extends State<PetPage> {
  TextEditingController? controller;
  TextInputAction? textInputAction;
  TextInputType? keyboardType;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        // title: Image.asset(
        //   'assets/cat.png',
        //   width: 50,
        //   height: 50,
        // ),
        title: SafeArea(
          child: Row(
            children: [

              Padding(
                padding: const EdgeInsets.all(100.0),
                child: Image.asset(
                  'assets/cat.png',
                  width: 50,
                  height: 50,
                ),
              ),
              // Icon(icon)
            ],
          ),
        ),
      ),
      drawer: const Drawer(),
      body: SafeArea(
        child: Column(
          children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Flexible(
                  child: SearchBar(
                hintText: 'Write some things',
                controller: controller,
                textInputAction: TextInputAction.continueAction,
                keyboardType: TextInputType.name,
                            )),
              ),
            Padding(padding: EdgeInsets.all(20.0)),
            Container(
              height: 500,
              child: GridView.count(
                primary: true,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.teal[100],
                    child: const Text("He'd have you all unravel at the"),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.teal[200],
                    child: const Text('Heed not the rabble'),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.teal[300],
                    child: const Text('Sound of screams but the'),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.teal[400],
                    child: const Text('Who scream'),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.teal[500],
                    child: const Text('Revolution is coming...'),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.teal[600],
                    child: const Text('Revolution, they...'),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
