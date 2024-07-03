import 'package:flutter/material.dart';

void main() {
  runApp(const AboutPage());
}

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ProfilePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Selamat Datang", style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Foto Profil dari lokal
            const CircleAvatar(
              radius: 75,
              backgroundImage: AssetImage('assets/images/foto.jpg'),
            ),
            const SizedBox(height: 16),
            
            // Nama
            const Text(
              'Muhammad Hilmi Syahrul Mubarok',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                
              ),
            ),
            const SizedBox(height: 8),

            // Status
            const Text(
              'Mobile Developer',
              style: TextStyle(
                fontSize: 16,
                color: Color.fromARGB(255, 0, 0, 0),
                fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(height: 20),

            // Tentang Saya
            const Text(
              'Tentang Saya',
              style: TextStyle(
                fontSize: 18,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),

            // Deskripsi dengan border, background putih, dan margin
            Container(
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 205, 203, 203),
                border: Border.all(color: Color.fromARGB(255, 158, 157, 157)),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Text(
                '''Saya seorang mahasiswa Teknik Informatika di Institut Teknologi Garut. Memiliki hobi travelling, bermain volly dan saya ingin menjadi orang yang lebih baik lagi.''',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            ),
            const SizedBox(height: 120),

            // Footer
            const Text(
              "itg.ac.id © 2024",
              style: TextStyle(
                fontSize: 14,
                color: Color.fromARGB(255, 158, 158, 158),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
