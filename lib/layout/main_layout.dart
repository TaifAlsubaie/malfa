import 'package:flutter/material.dart';
import '../pages/regions.dart';
//import '../pages/kings.dart';
//import '../pages/about.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int currentIndex = 0;

  final pages = [RegionsPage() /*KingsPage(), AboutPage()*/];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (_) {},
        //onTap: (i) => setState(() => currentIndex = i),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xFF846043),
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(
            icon: Icon(Icons.auto_stories), //   للملوك
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.groups), //  من نحن
            label: '',
          ),
        ],
      ),
    );
  }
}
