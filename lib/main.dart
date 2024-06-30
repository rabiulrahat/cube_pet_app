import 'package:cube_pet_app/login_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  DateTime? _lastPressed;

  final List<Widget> _children = [

    MenuPage(),
    Placeholder(),
    Placeholder(),
    // Replace these with your screens
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  int _backPressCount = 0;

 _onWillPop(dpop) async {
    DateTime now = DateTime.now();
    if (_currentIndex != 0) {
      setState(() {
        _currentIndex = 0;
      });
      return false;
    }
    if (_lastPressed == null ||
        now.difference(_lastPressed!) > Duration(seconds: 1)) {
      _backPressCount = 0;
      _lastPressed = now;
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Press back again to exit')));
      return false;
    }
    _backPressCount++;
    if (_backPressCount == 1) {
      SystemNavigator.pop(); // Exit the app
      return true;
    }
    _lastPressed = now;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Press again to exit'),
        duration:
            Duration(milliseconds: 100), // Set the duration to 500 milliseconds
      ),
    );

    return false;
  }



  @override
  Widget build(BuildContext context) {
    return PopScope(
        canPop:false,
      onPopInvoked:_onWillPop,
      child: Scaffold(
        body: _children[_currentIndex],
        bottomNavigationBar: SafeArea(
          child: BottomNavigationBar(
            backgroundColor: Colors.amber,
            currentIndex: _currentIndex,
            onTap: onTabTapped,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'dhaka',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.business),
                label: 'Business',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.school),
                label: 'School',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: GridView.count(
          crossAxisCount: 3, // Number of columns
          children: List.generate(40, (index) {
            return Column(
              children: [

                Container(
                  child: Center(
                    child: Text(
                      'Tile $index',
                      style: Theme.of(context).textTheme.headline5,
                    ),
                  ),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}
