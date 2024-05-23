import 'package:flutter/material.dart';
import 'package:made_firebase/stream.dart';
import 'package:made_firebase/upload.dart';

class Home extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const Home({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 127, 65, 61),
        title: const Center(
          child: Text('To Do List', style: TextStyle(color: Colors.white)),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Expanded(
                child: CustomStream(),
              ),
              const SizedBox(height: 16.0),
              Center(
                child: FloatingActionButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const Upload(),
                      ),
                    );
                  },
                  backgroundColor: const Color.fromARGB(255, 127, 65, 61),
                  child: const Icon(Icons.add, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
