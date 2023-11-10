import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JayantiExplorerApp',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0; // indeks item yang dipilih saat ini

  // daftar halaman yang akan ditampilkan sesuai dengan indeks item
  final List<Widget> _pages = [
    Center(child: Text('Halaman 1')),
    Center(child: Text('Halaman 2')),
    Center(child: Text('Halaman 3')),
  ];

  // fungsi yang dipanggil ketika item di BottomNavigationBar diklik
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // mengubah indeks item yang dipilih
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('JayantiExplorerApp'),
      ),
      body: _pages[
          _selectedIndex], // menampilkan halaman sesuai dengan indeks item yang dipilih
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Cari',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
