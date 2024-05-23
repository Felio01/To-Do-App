import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

final db = FirebaseFirestore.instance;

class Upload extends StatefulWidget {
  // ignore: use_key_in_widget_constructors
  const Upload({Key? key});

  @override
  State<Upload> createState() => _UploadState();
}

class _UploadState extends State<Upload> {
  final _activity = TextEditingController();
  final _bulan = TextEditingController();
  final _hari = TextEditingController();
  final _tanggal = TextEditingController();

  void _submit() {
    final todo = _activity.text;
    final bulan = _bulan.text;
    final hari = _hari.text;
    final tanggal = int.parse(_tanggal.text);

    try {
      db.collection('Doc').doc('nilai').collection('nilai').add(
        {
          'Aktivitas': todo,
          'Bulan': bulan,
          'Hari': hari,
          'Tanggal': tanggal.toString(),
          'Upload Date': FieldValue.serverTimestamp(),
        },
      );
    } catch (e) {
      // ignore: avoid_print
      print(e);
    }

    Navigator.of(context).pop();
  }

  @override
  void dispose() {
    _activity.dispose();
    _bulan.dispose();
    _hari.dispose();
    _tanggal.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 127, 65, 61),
        title: const Center(
          child: Text('Masukkan Data' , style: TextStyle(color: Colors.white)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              controller: _activity,
              decoration: const InputDecoration(
                labelText: 'Aktivitas',
              ),
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _bulan,
              decoration: const InputDecoration(
                labelText: 'Bulan',
              ),
            ),
            TextFormField(
              controller: _hari,
              decoration: const InputDecoration(
                labelText: 'Hari',
              ),
            ),
            TextFormField(
              controller: _tanggal,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Tanggal',
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _submit,
              style: ElevatedButton.styleFrom(
                // ignore: deprecated_member_use
                primary: const Color.fromARGB(255, 127, 65, 61),
              ),
              child: const Text('Upload', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
