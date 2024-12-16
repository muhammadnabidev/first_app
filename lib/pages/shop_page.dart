import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_nabi/pages/navigation/fovorites_page.dart';
import 'package:muhammad_nabi/screens/main_page.dart';
import 'package:muhammad_nabi/pages/navigation/profile_page.dart';
import 'package:muhammad_nabi/pages/navigation/settingis_page.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  int _currentIndex = 0; // Track the current selected index

  // List of pages to display based on selected index
  final List<Widget> _pages = [
    MainPage(),
    const FovoritesPage(),
    ProfilePage(),
    SettingisPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Shop Page')),
      body: _pages[_currentIndex], // Show page based on current index
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.blue,
        items: const [
          Icon(Icons.home),
          Icon(Icons.favorite, color: Colors.red),
          Icon(Icons.person, color: Color.fromARGB(255, 14, 90, 152)),
          Icon(Icons.settings, color: Colors.grey),
        ],
        index: _currentIndex, // Set the current index
        onTap: (index) {
          setState(() {
            _currentIndex = index; // Update the current index
          });
        },
      ),
    );
  }
}
