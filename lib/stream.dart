import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

final FirebaseFirestore db = FirebaseFirestore.instance;

class CustomStream extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const CustomStream({Key? key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: db.collection('Doc').doc('nilai').collection('nilai').snapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final data = snapshot.data!.docs;

          return ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              final item = data[index];
              final activity = item['Aktivitas'];
              final bulan = item['Bulan'];
              final hari = item['Hari'];
              final tanggal = item['Tanggal'] ?? 0;
              final uploadDateTimestamp = item['Upload Date'] as Timestamp;
              final uploadDate = DateTime.fromMillisecondsSinceEpoch(
                      uploadDateTimestamp.seconds * 1000)
                  .toString();

              return Card(
                child: ListTile(
                  title: Text('$activity'),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),
                      Text('Bulan: $bulan'),
                      const SizedBox(height: 10),
                      Text('Hari: $hari'),
                      const SizedBox(height: 10),
                      Text('Tanggal: $tanggal'),
                      const SizedBox(height: 10),
                      Text('Upload Date: $uploadDate'),
                    ],
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      db
                          .collection('Doc')
                          .doc('nilai')
                          .collection('nilai')
                          .doc(item.id)
                          .delete();
                    },
                    icon: const Icon(Icons.delete),
                  ),
                ),
              );
            },
          );
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
