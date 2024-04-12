import 'package:flutter/material.dart';
import 'package:uji_coba/screens/crud.dart';

import 'package:uji_coba/screens/home_screen.dart';
import 'package:uji_coba/screens/news_feed.dart';
import 'package:uji_coba/screens/profile_screen.dart';
import 'package:uji_coba/screens/setting_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Home Screen'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const HomePage(),
    const SettingScreen(),
    const ProfileScreen(),
  ];

  final List<String> _appBarTitles = const [
    'Home',
    'cart',
    'Profile',
  ]; // List of titles corresponding to each screen

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_appBarTitles[_selectedIndex]),
      ),
      drawer: Drawer(
          child: ListView(padding: EdgeInsets.zero, children: [
        const DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.brown,
          ),
          child: Column(
            children: [
              Text("I Made Krisna Dwi Kartika"),
              SizedBox(height: 20,),
              CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage('assets/images/krisna.png'),
            ),
            ],
          )
        ),
        ListTile(
          title: const Text('home'),
          selected: _selectedIndex == 0,
          onTap: () {
              _onItemTapped(1);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NewsScreen()),
              );
},
        ),
        ListTile(
          title: const Text('cart'),
          selected: _selectedIndex == 1,
          onTap: () {
              _onItemTapped(1);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NewsScreen()),
              );
},
        ),
          ListTile(
          title: const Text('Profile'),
          selected: _selectedIndex == 2,
          onTap: () {
            // Update the state of the app
            _onItemTapped(2);
            // Then close the drawer
            Navigator.pop(context);
          }
     ),

     ListTile(
          title: const Text('latihan api'),
          selected: _selectedIndex == 1,
          onTap: () {
              _onItemTapped(1);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NewsScreen()),
              );
},
        ),

        ListTile(
          title: const Text('latihan crud'),
          selected: _selectedIndex == 1,
          onTap: () {
              _onItemTapped(1);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AddTypes()),
              );
},
        ),
])),

      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.brown,
        onTap: _onItemTapped,
      ),
    );
   
  }
}
