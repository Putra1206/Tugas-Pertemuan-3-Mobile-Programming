import 'package:flutter/material.dart';

void main() {
  runApp(const HelloApp());
}

class HelloApp extends StatelessWidget {
  const HelloApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //Menghilangkan Banner Debug
      theme: ThemeData(
        useMaterial3: true, //Menggunakan desain lebih dari 3 material
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Aplikasi Counter Fahri',
            style: TextStyle(color: Color.fromARGB(255, 10, 5, 5)),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 175, 14, 14), //Mengubah warna
        ),
        body: const Center(child: CounterWidget()),
      ),
    );
  }
}

class CounterWidget extends StatefulWidget {
  const CounterWidget({super.key});

  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  // Variabel state yang akan berubah
  int _counter = 0;

  // Fungsi untuk menambah nilai counter
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  // Fungsi untuk mengurangi nilai counter
  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  //Fungsi baru untuk reset
  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text(
          'Nilai Counter Saat Ini:',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.teal,
          ),
        ),
        Text(
          '$_counter',
          style: const TextStyle(
            fontSize: 60,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: _incrementCounter,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green[100],
                padding: const EdgeInsets.all(15),
              ),
              child: const Icon(Icons.add, color: Colors.green),
            ),
            const SizedBox(width: 10),

            //Menambahkan tombol reset di antara + dan -
            ElevatedButton(
              onPressed: _counter == 0
                  ? null
                  : _resetCounter, //Tidak aftif jika 0
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange[100],
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 15,
                ),
              ),
              child: const Text(
                "RESET",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(width: 10),

            //Membuat validasi nonaktif tombol (-) jika nilai counter 0
            ElevatedButton(
              onPressed: _counter == 0 ? null : _decrementCounter,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red[100],
                padding: const EdgeInsets.all(15),
              ),
              child: const Icon(Icons.remove, color: Colors.red),
            ),
          ],
        ),
      ],
    );
  }
}
