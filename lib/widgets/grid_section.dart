import 'package:flutter/material.dart';

class GridSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(10),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        childAspectRatio: 3 / 4,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (ctx, i) {
        return InkWell(
          onTap: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text('Detail Produk'),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset('assets/images/produk.jpg'),
                      SizedBox(height: 10),
                      Text('Nama Produk'),
                      SizedBox(height: 10),
                      Text('Deskripsi produk...'),
                    ],
                  ),
                  actions: [
                    TextButton(
                      child: Text('Tutup'),
                      onPressed: () {
                        Navigator.of(context).pop(); // Tutup dialog
                      },
                    ),
                  ],
                );
              },
            );
          },
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0), // Sudut membulat
            ),
            elevation: 4, // Tambahkan bayangan agar lebih jelas
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                  15.0), // Memastikan gambar juga membulat
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.white,
                      child: Center(
                        child: Image.asset(
                          'assets/images/produk.jpg',
                          fit: BoxFit.cover, // Pastikan gambar sesuai proporsi
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 40,
                    color: Colors.grey[300],
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Nama Produk',
                      textAlign: TextAlign.center, // Mengatur teks di tengah
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
      itemCount: 4, // Jumlah item grid
    );
  }
}
