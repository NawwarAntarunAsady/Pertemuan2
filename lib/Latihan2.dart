
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HalamanCounter(),
    );
  }
}

class HalamanCounter extends StatefulWidget {
  const HalamanCounter({super.key});

  @override
  State<HalamanCounter> createState() => _HalamanCounterState();
}

class _HalamanCounterState extends State<HalamanCounter> {
  int angka = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Latihan 2 - Stateful'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Nilai Counter',
              style: TextStyle(fontSize: 22),
            ),
            const SizedBox(height: 16),

            Text(
              '$angka',
              style: const TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 24),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Tombol kurang
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      angka--;
                    });
                  },
                  child: const Icon(Icons.remove),
                ),

                const SizedBox(width: 12),

                // Tombol tambah
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      angka++;
                    });
                  },
                  child: const Icon(Icons.add),
                ),

                const SizedBox(width: 12),

                // Tombol reset
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      angka = 0;
                    });
                  },
                  child: const Icon(Icons.refresh),
                ),
              ],
            ),

            const SizedBox(height: 12),
            const Text('Kurang     Tambah     Reset'),
          ],
        ),
      ),
    );
  }
}
