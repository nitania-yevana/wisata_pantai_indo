import 'package:flutter/material.dart';
import 'package:wisata_pantai_indo/data/pantai_data.dart';
// import 'package:wisata_candi/models/candi.dart';
import '../models/pantai.dart';

class PencarianScreen extends StatefulWidget {
  const PencarianScreen({super.key});

  @override
  State<PencarianScreen> createState() => _PencarianScreenState();
}

class _PencarianScreenState extends State<PencarianScreen> {
  // TODO: 1. Deklarasikan variabel yang dibutuhkan
  final List<Pantai> _filteredPantais = pantaiList;
  final String _pencarianQuery = '';
  final TextEditingController _pencarianController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TODO: 2. Buat appbar dengan judul Pencarian Pantai
      appBar: AppBar(
        title: const Text('Pencarian Pantai'),
      ),
      // TODO: 3. Buat body berupa Column
      body: Column(
        children: [
          // TODO: 4. Buat TextField pencarian sebagai anak dari Column
          Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.lightBlueAccent[50],
              ),
              child: const TextField(
                autofocus: false,
                // TODO: 6. Implementasi fitur pencarian
                decoration: InputDecoration(
                  hintText: 'Cari pantai ...',
                  prefixIcon: Icon(Icons.search),
                  // TODO: 7. Implementasi pengosongan input
                  border: InputBorder.none,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.lightBlueAccent),
                  ),
                  contentPadding:
                  EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                ),
              ),
            ),
          ),
          // TODO: 5. Buat ListView hasil pencarian sebagai anak dari Column
          Expanded(
            child: ListView.builder(
              itemCount: _filteredPantais.length,
              itemBuilder: (_, index) {
                final pantai = _filteredPantais[index];
                // TODO: 8. Implementasi GestureDetector dan Hero animation
                return Card(
                  margin: const EdgeInsets.symmetric(horizontal: 16,
                      vertical: 4),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        width: 100,
                        height: 100,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            pantai.imageAsset,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(pantai.name, style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold,
                            ),),
                            const SizedBox(height: 4),
                            Text(pantai.location),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 16)
        ],
      ),
    );
  }
}