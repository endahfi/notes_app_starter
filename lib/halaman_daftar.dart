import 'package:flutter/material.dart';

/// PERTEMUAN 2: Widget dasar dan UI daftar catatan.
///
/// Tahap 1 sampai 3 ditulis sebagai komentar di dalam build() agar kamu bisa
/// mencobanya satu per satu. Tahap 4 adalah hasil akhir yang aktif.
class HalamanDaftar extends StatefulWidget {
  const HalamanDaftar({super.key});

  @override
  State<HalamanDaftar> createState() => _HalamanDaftarState();
}

class _HalamanDaftarState extends State<HalamanDaftar> {
  final List<String> catatan = [
    'Belajar Flutter',
    'Rencana Minggu Ini',
    'Ide Proyek',
  ];

  @override
  Widget build(BuildContext context) {
    // TAHAP 1: Eksperimen Padding, Column, Row, Text, Icon, SizedBox.
    // Ganti `body` di bawah dengan kode ini, lalu ubah angkanya:
    //
    // body: Padding(
    //   padding: const EdgeInsets.all(16),
    //   child: Column(
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: [
    //       const Text('Belajar Flutter'),
    //       const SizedBox(height: 8),
    //       Row(children: const [
    //         Icon(Icons.event),
    //         Text(' 26 Okt 2026'),
    //       ]),
    //     ],
    //   ),
    // ),

    // TAHAP 2: ListView dengan ListTile yang ditulis satu per satu.
    //
    // body: ListView(
    //   children: const [
    //     ListTile(
    //       leading: Icon(Icons.note),
    //       title: Text('Belajar Flutter'),
    //       subtitle: Text('Target hari ini'),
    //     ),
    //     ListTile(title: Text('Ide Proyek')),
    //   ],
    // ),

    // TAHAP 3: ListView.builder yang membaca List `catatan`.
    //
    // body: ListView.builder(
    //   itemCount: catatan.length,
    //   itemBuilder: (context, i) {
    //     return ListTile(
    //       leading: const Icon(Icons.note),
    //       title: Text(catatan[i]),
    //     );
    //   },
    // ),

    // TAHAP 4 (hasil akhir): ListView.builder + Card dan tombol tambah.
    return Scaffold(
      appBar: AppBar(title: const Text('Catatan Saya')),
      body: ListView.builder(
        itemCount: catatan.length,
        itemBuilder: (context, i) {
          return Card(
            child: ListTile(
              leading: const Icon(Icons.note),
              title: Text(catatan[i]),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        // Belum berfungsi. Diisi di pertemuan 3.
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
