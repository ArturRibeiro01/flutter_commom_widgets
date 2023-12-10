import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 131),
            child: Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.amber,
                  image: const DecorationImage(
                      image: NetworkImage(
                          'https://avatars.githubusercontent.com/u/59667445?v=4'),
                      fit: BoxFit.cover),
                  border: Border.all(color: Colors.brown, width: 2)),
              child: const Center(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'Artur Ribeiro',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.brown,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
