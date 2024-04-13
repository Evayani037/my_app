import 'package:flutter/material.dart';

class DietScreen extends StatelessWidget {
  const DietScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Diet Program'),
      ),
      body: ListView(
        children: <Widget>[
          CustomListItem(
            number: '1',
            title: 'Sarapan',
            description: 'Telur, roti, dan buah-buahan',
            onPressed: () {
              // Add edit functionality here
            },
          ),
          CustomListItem(
            number: '2',
            title: 'Makan Siang',
            description: 'Sayuran, daging, dan nasi',
            onPressed: () {
              // Add edit functionality here
            },
          ),
          CustomListItem(
            number: '3',
            title: 'Makan Malam',
            description: 'Ikan, sayuran, dan nasi',
            onPressed: () {
              // Add edit functionality here
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add functionality to add a new diet item
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class CustomListItem extends StatelessWidget {
  const CustomListItem({
    Key? key,
    required this.number,
    required this.title,
    required this.description,
    required this.onPressed,
  }) : super(key: key);

  final String number;
  final String title;
  final String description;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Text(number),
      ),
      title: Text(title),
      subtitle: Text(description),
      trailing: IconButton(
        icon: const Icon(Icons.edit),
        onPressed: onPressed,
      ),
    );
  }
}
