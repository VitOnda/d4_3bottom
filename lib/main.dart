import 'package:flutter/material.dart';
import 'package:hw_bottomnavbar/page/home_page.dart';
import 'package:hw_bottomnavbar/page/list_book_page.dart';
import 'package:hw_bottomnavbar/page/list_posts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BottomNavigationBarApp(),
    );
  }
}

class BottomNavigationBarApp extends StatefulWidget {
  const BottomNavigationBarApp({Key? key}) : super(key: key);

  @override
  _BottomNavigationBarAppState createState() => _BottomNavigationBarAppState();
}

class _BottomNavigationBarAppState extends State<BottomNavigationBarApp> {
  int page = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        backgroundColor: Colors.black45,
        title: const Text(
          'Домашня робота. Три вкладки',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Page $page'),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: page,
        onTap: (index) {
          setState(() {
            page = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.post_add),
            label: 'List Posts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'List Book Page',
          ),
        ],
      ),
    );
  }
}

