import 'package:flutter/material.dart';

/// Halaman detail satu catatan.
///
/// Konstruktornya sudah menerima isi catatan, jadi di pertemuan 3 kamu cukup
/// memanggil DetailPage(catatan[i]).
class DetailPage extends StatelessWidget {
  final String isi;

  const DetailPage(this.isi, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detail')),

      // PERTEMUAN 3: ganti Center di bawah dengan Padding berisi Text(isi).
      body: const Center(child: Text('Detail catatan dibuat di pertemuan 3.')),
    );
  }
}
