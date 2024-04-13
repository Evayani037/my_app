import 'package:flutter/material.dart';
import 'package:my_app/screens/latihan_screen.dart';
import 'package:my_app/screens/program_screen.dart'; // Imported the correct screen
import 'package:my_app/screens/profile_screen.dart';
import 'package:my_app/authentication/login.dart';
import 'package:my_app/screens/news_screen.dart';
import 'package:my_app/screens/latian_feed.dart';
import 'package:my_app/components/my_button.dart';


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
      home: const LoginScreen(),
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
    const LatihanScreen(),
    const DietScreen(),
    const ProfileScreen(),
  ];

  final List<String> _appBarTitles = const [
    'Kebugaran',
    'PROGRAM',
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
        title: Text(
          _appBarTitles[_selectedIndex],
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.redAccent,
      ),
      body: _screens[_selectedIndex],
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 138, 73, 86),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/Eva.png'),
                    radius: 45,
                  ),
                  SizedBox(height: 10),
                  Text(
                    '@evayaniekadek',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text('Kadek Evayani'),
              leading: Icon(Icons.person),
            ),
            ListTile(
              title: Text('Notifikasi'), // Sesuaikan dengan judul yang benar
              leading: Icon(Icons.notification_add),
            ),
            ListTile(
              title: Text('Singaraja, Bali'), // Sesuaikan dengan judul yang benar
              leading: Icon(Icons.location_on),
            ),
            Divider(),
            ListTile(
              title: Text('Setting'),
              leading: Icon(Icons.settings),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NewsScreen()),
                );
              },
            ),
            ListTile(
              title: Text('Latian Feed'),
              leading: Icon(Icons.settings),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LatianFeed()), // Changed LombaScreen to LatihanScreen
                );
              },
            ),
            ListTile(
              title: Text('Log Out'),
              leading: Icon(Icons.logout),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.run_circle_rounded),
            label: 'Latihan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Program', // Sesuaikan dengan judul yang benar
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}
