import 'package:flutter/material.dart';

class FastTabScreen extends StatefulWidget {
  const FastTabScreen({super.key});

  @override
  State<FastTabScreen> createState() => _FastTabScreenState();
}

class _FastTabScreenState extends State<FastTabScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.camera_alt_outlined),
              ),
            ),
          )
        ],
      ),
    );
  }
}
