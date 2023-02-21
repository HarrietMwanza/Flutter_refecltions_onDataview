import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<String> images = [    'https://via.placeholder.com/150/0000FF/808080',    'https://via.placeholder.com/150/FF0000/FFFFFF',    'https://via.placeholder.com/150/00FF00/000000',    'https://via.placeholder.com/150/000000/FFFFFF',    'https://via.placeholder.com/150/FFFF00/000000',    'https://via.placeholder.com/150/00FFFF/000000',    'https://via.placeholder.com/150/FF00FF/000000',    'https://via.placeholder.com/150/808080/FFFFFF',    'https://via.placeholder.com/150/C0C0C0/000000',    'https://via.placeholder.com/150/FFFFFF/000000',  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter DataViews Example'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.all(10),
                itemCount: images.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 1,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Image.network(
                    images[index],
                    fit: BoxFit.cover,
                  );
                },
              ),
            ),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(10),
                itemCount: images.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Image.network(
                        images[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
