import 'package:flutter/material.dart';

/*void main() => runApp(const MaterialApp(
  home: HomePage(),
));*/

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const List<String> imageUrls = [
    'https://upload.wikimedia.org/wikipedia/commons/thumb/e/eb/Hvannadalshnjukur.JPG/1280px-Hvannadalshnjukur.JPG',
    'https://upload.wikimedia.org/wikipedia/commons/d/d3/Северное_сияние_в_Исландии.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/d/d2/New_Forest_in_Iceland.1.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/4/44/Turister_iagttager_Strokkur.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/f/f6/Hesteridning.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/5/50/Central_Reykjavík_seen_from_Hallgrímskirkja.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/9/9f/NesjavellirPowerPlant_edit2.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/1/1e/Gullfoss%2C_an_iconic_waterfall_of_Iceland.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/a/a6/Hallgrímskirkja_%2816282067598%29.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        title: const Text('Home Page'),
        centerTitle: true,
        backgroundColor: Colors.black45,
      ),
      body: SafeArea (
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 3.0,
            mainAxisSpacing: 3.0,
          ),
          itemCount: imageUrls.length,
          itemBuilder: (context, index) {
            return Image.network(
              imageUrls[index],
              fit: BoxFit.cover,
            );
          },
        ),
      ),
    );
  }
}
