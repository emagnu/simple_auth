//   ///
//  Import LIBRAIES
import 'package:flutter/material.dart';
//  Import FILES
//  PARTS
//  PROVIDERS
//  //  //   ///

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // appBar: AppBar(title: Text('Home Page')),
      body: Center(
        child: Text(
          'Home Page',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
