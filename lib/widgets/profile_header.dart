import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      color: Colors.grey[200],
      child: Row(
        children: [
          Container(
            width: 80,
            height: 80,
            color: Colors.grey,
            child: Center(child: Image.asset('assets/images/profile.jpg')),
          ),
          SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  'NIM: 5220411186\nNama: Nadhif Atha Satria Wibowo\nProdi: Informatika\nMata Kuliah: Mobile & Web Service',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
