import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _selectedIndex = 0;

  final List<Widget> _screens = [
    Tab1Screen(),
    Tab2Screen(),
    Tab3Screen(),
    Tab4Screen(),
    Tab5Screen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Instagram'),
        actions: [
          IconButton(
            icon: Icon(Icons.favorite_border),
            onPressed: () {

            },
          ),
          IconButton(
            icon: Icon(Icons.near_me_outlined),
            onPressed: (){

            },
          )
        ],
      ),
      body: Center(
        child: _screens[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.black,
        currentIndex: _selectedIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled),label: 'Tab1'),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Tab2'),
          BottomNavigationBarItem(icon: Icon(Icons.add_box_outlined),label: 'Tab3'),
          BottomNavigationBarItem(icon: Icon(Icons.ondemand_video),label: 'Tab4'),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle_rounded),label: 'Tab5'),
        ],
      ),
    );

  }
}

class Tab1Screen extends StatelessWidget {
  const Tab1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.all(
                    Radius.circular(200),
                  ),
                ),
                  margin: EdgeInsets.only(left: 10),
              ),
              Container(
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.all(
                    Radius.circular(200),
                  ),
                ),
              ),
              Container(
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.all(
                    Radius.circular(200),
                  ),
                ),
              ),
              Container(
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.all(
                    Radius.circular(200),
                  ),
                ),
                margin: EdgeInsets.only(right: 10),
              ),
            ],
          ),
        ),
        Flexible(
          child: Container(
            padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
            child: Image.asset(
              'assets/images/kuromi2.jpeg',
            ),
          ),
        ),
      ],
    );
  }
}

class Tab2Screen extends StatelessWidget {
  const Tab2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
          'Tab2 Content'
      ),
    );
  }
}

class Tab3Screen extends StatelessWidget {
  const Tab3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
          'Tab3 Content'
      ),
    );
  }
}

class Tab4Screen extends StatelessWidget {
  const Tab4Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
          'Tab4 Content'
      ),
    );
  }
}

class Tab5Screen extends StatelessWidget {
  const Tab5Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
          'Tab5 Content'
      ),
    );
  }
}
