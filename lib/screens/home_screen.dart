import 'package:flutter/material.dart';

import '../widgets/draggble_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottomOpacity: 2.2,
        centerTitle: true,
        title: const Text(
          'Widget Of The Week',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.deepPurple,
          ),
        ),
      ),
      body:const Center(
        child: Column(
          mainAxisAlignment: .center,
          // crossAxisAlignment: .center,
          children: [CustomDoughDemo()],
        ),
      ),
    );
  }
}
