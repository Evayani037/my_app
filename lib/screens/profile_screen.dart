import 'package:flutter/material.dart';
import 'package:my_app/screens/privasi_screen.dart';
//import 'package:my_app/screens/home_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const CircleAvatar(
              radius: 90,
              backgroundImage: AssetImage('assets/images/Eva.png'),
            ),
            const SizedBox(height: 20),
            const Text(
              '@evayaniekadek',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Mahasiswa',
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey,
              ),
            ),
            const Divider(height: 40),
            const SizedBox(height: 10),
            const ListTile(
              leading: Icon(Icons.person_2_outlined),
              title: Text('Kadek Evayani',
              style: TextStyle(fontSize: 18)),
            ),
            //const Divider(),
            const ListTile(
              leading: Icon(Icons.notification_add),
              title: Text('Notifikasi',
              style: TextStyle(fontSize: 18)),
            ),
            //const Divider(),
            const ListTile(
              leading: Icon(Icons.location_on),
              title: Text('Singaraja, Bali',
              style: TextStyle(fontSize: 18)),
            ),
          ListTile(
  leading: Icon(Icons.privacy_tip),
  title: Text(
    'Privasi',
    style: TextStyle(fontSize: 18),
  ),
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const PrivasiScreen()),
    );
  },
),


          ],
        ),
      ),
    );
  }
}