import 'package:flutter/material.dart';
import '../widgets/profile_header.dart';
import '../widgets/grid_section.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Column(
        children: [
          ProfileHeader(),
          Expanded(
            child: GridSection(),
          ),
        ],
      ),
    );
  }
}
