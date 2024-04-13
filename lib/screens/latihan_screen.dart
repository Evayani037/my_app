import 'package:flutter/material.dart';

class LatihanScreen extends StatelessWidget {
  const LatihanScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SEMUA TANTANGAN'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: <Widget>[
          _buildNewsCard(
            title: 'LATIHAN TUBUH PENUH',
            imagePath: 'assets/images/tubuh.jpeg',
          ),
          SizedBox(height: 16.0),
          _buildNewsCard(
            title: 'LATIHAN OTOT PERUT',
            imagePath: 'assets/images/perut.jpeg',
          ),
          SizedBox(height: 16.0),
          _buildNewsCard(
            title: 'LATIHAN LENGAN',
            imagePath: 'assets/images/lengan.jpeg',
          ),
          SizedBox(height: 16.0),
          _buildNewsCard(
            title: 'LATIHAN BOKONG',
            imagePath: 'assets/images/bokong1.jpeg',
          ),
          SizedBox(height: 16.0),
          _buildNewsCard(
            title: 'LATIHAN KAKI',
            imagePath: 'assets/images/kaki.jpeg',
          ),
        ],
      ),
    );
  }

  Widget _buildNewsCard({required String title, required String imagePath}) {
    return InkWell(
      onTap: () {
        // Tambahkan aksi yang ingin dilakukan saat card di-tap
      },
      child: Card(
        elevation: 4,
        child: Stack(
          children: <Widget>[
            SizedBox(
              height: 200,
              width: 400,
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                color: Colors.black.withOpacity(0.7),
                padding: EdgeInsets.all(8.0),
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
