// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, avoid_unnecessary_containers, unused_field

import 'package:flutter/material.dart';

/// Flutter code sample for [BottomNavigationBar].

void main() => runApp(const BottomNavigationBarExampleApp());

class BottomNavigationBarExampleApp extends StatelessWidget {
  const BottomNavigationBarExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavigationBarExample(),
    );
  }
}

class MENU1 extends StatelessWidget {
  const MENU1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Container(
              width: 1400,
              height: 70,
              color: Colors.amber,
              margin: EdgeInsets.all(20),
              child: Center(
                child: Text(
                  'MENU 1',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    color: Colors.amber,
                    child: Center(
                      child: Text(
                        'TEKS 1',
                      ),
                    ),
                  ),
                  Container(
                    width: 70,
                    height: 70,
                    color: Colors.amber,
                    child: Center(child: Text('TEKS 2')),
                  ),
                  Container(
                    width: 70,
                    height: 70,
                    color: Colors.amber,
                    child: Center(child: Text('TEKS 3')),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MENU2 extends StatelessWidget {
  const MENU2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Center(child: Text('JUDUL 1', style: TextStyle(color: Colors.black, fontSize: 25),)),
        ),
      ),
    );
  }
}

class MENU3 extends StatelessWidget {
  const MENU3({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Column(
        children: [
          Container(
            height: 70,
            child: Center(
                child: Text(
              'JUDUL 2',
              style: TextStyle(fontSize: 25),
            )),
          ),
          Container(
            child: Center(
                child: Text(
              'Terima Kasih',
              style: TextStyle(fontSize: 20),
            )),
          )
        ],
      )),
    );
  }
}

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({super.key});

  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  int _selectedIndex = 1;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    MENU1(),
    MENU2(),
    MENU3(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('BottomNavigationBar Sample'),
      // ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'MENU 1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'MENU 2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'MENU 3',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
