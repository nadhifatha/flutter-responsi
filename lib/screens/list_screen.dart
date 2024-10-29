import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View'),
      ),
      body: ListView.builder(
        itemCount: 10, // Jumlah item dalam list
        itemBuilder: (context, index) {
          return ListTile(
            leading: Container(
              width: 50,
              height: 50,
              color: Colors.grey,
              child: Center(child: Text('Img')),
            ),
            title: Text('Item $index'),
            subtitle: Text('Description $index'),
          );
        },
      ),
    );
  }
}
