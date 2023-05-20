import 'package:flutter/material.dart';
import 'package:flutter_3_mei/data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<Datas> data = [
    Datas(img: "img", name: "name", rating: "rating"),
    Datas(img: "img", name: "name", rating: "rating"),
    Datas(img: "img", name: "name", rating: "rating"),
    Datas(img: "img", name: "name", rating: "rating"),
    Datas(img: "img", name: "name", rating: "rating")
  ];

  int selectedIndex = 2;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: data.length,
              itemBuilder: (BuildContext context, int i) {
                return Row(
                  children: [
                    Text(data[i].name),
                    Text(data[i].rating),
                  ],
                );
              }),
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.red,
          onTap: (value) {
            setState(() {
              selectedIndex = value;
              if (selectedIndex == 2) {
                Navigator.pushNamed(context, "/profile");
              }
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: "Add"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ],
        ),
      ),
    );
  }
}
