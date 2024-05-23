import 'package:flutter/material.dart';
import 'package:healthcare/screens/pesan-doktor.dart';

class HomeScreen extends StatelessWidget {
  // Daftar gejala yang akan ditampilkan di layar utama.
  final List symptoms = [
    "Temperature",
    "Snuffle",
    "Fever",
    "Cough",
    "Cold",
  ];

  // Daftar gambar dokter yang akan ditampilkan di layar utama.
  final List imgs = [
    "doctor1.jpg",
    "doctor2.jpg",
    "doctor3.jpg",
    "doctor4.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    // Menggunakan SingleChildScrollView untuk memungkinkan pengguna scroll pada layar jika konten melebihi ukuran layar.
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Menghilangkan tombol back
        backgroundColor:
            Colors.indigo, // Menambahkan warna biru tua sebagai background
        title: Row(
          children: [
            Icon(Icons.medical_services,
                color: Colors
                    .white), // Menggunakan ikon medical_services untuk kesehatan
            SizedBox(width: 5), // Spasi antara icon dan teks
            Text(
              'docstant',
              style: TextStyle(
                color: Colors.white, // Warna teks
                fontSize: 24, // Ukuran font
                fontWeight: FontWeight.bold, // Ketebalan teks
                letterSpacing: 1.5, // Spasi antar huruf
              ),
            ),
          ],
        ),
        actions: [], // Menghapus tombol settings dari actions
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'images/map.jpg',
                  width: 300, // Lebar gambar
                  height: 250, // Tinggi gambar
                  fit: BoxFit.cover, // Atur cara gambar ditampilkan
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Rumah Sakit di sekitar Anda:',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            HospitalCard(
              name: 'Rumah Sakit Dr. Wahidin Sudirohusodo',
              distance: '1,2km',
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PesanDoktorScreen(),
                    ));
              },
            ),
            HospitalCard(
              name: 'Rumah Sakit Dr. Sardjito',
              distance: '3,5km',
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PesanDoktorScreen(),
                    ));
              },
            ),
            HospitalCard(
              name: 'Rumah Sakit Dr. Cipto Mangunkusumo',
              distance: '2,8km',
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PesanDoktorScreen(),
                    ));
              },
            ),
            HospitalCard(
              name: 'Rumah Sakit Dr. Hasan Sadikin',
              distance: '4,1km',
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PesanDoktorScreen(),
                    ));
              },
            ),
            HospitalCard(
              name: 'Rumah Sakit Dr. Soetomo',
              distance: '5,3km',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PesanDoktorScreen(),
                  ),
                );
              },
            ),
            HospitalCard(
              name: 'Rumah Sakit Dr. Sardjito',
              distance: '3,9km',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PesanDoktorScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class HospitalCard extends StatelessWidget {
  final String name;
  final String distance;
  final VoidCallback onTap;

  HospitalCard(
      {required this.name, required this.distance, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Card(
        color: Colors.lightBlue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: ListTile(
          onTap: onTap,
          leading: Icon(Icons.location_city, color: Colors.white, size: 40),
          title: Text(
            name,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.location_on, color: Colors.white),
              Text(
                distance,
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}