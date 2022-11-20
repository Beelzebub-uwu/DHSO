import 'package:flutter/material.dart';
import 'Data.dart';
import 'settings.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    const List<Widget> pages = <Widget>[
      Home(),
      Data(),
      Settings(),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 15,
        selectedItemColor: Colors.white,
        unselectedFontSize: 10,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        backgroundColor: Colors.black87,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.auto_graph_rounded), label: 'Data'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/images/heart.jpg',
          height: MediaQuery.of(context).size.height * 0.2,
          width: MediaQuery.of(context).size.height * 0.2,
        ),
      ),
    );
  }
}
