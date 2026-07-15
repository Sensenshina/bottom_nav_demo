import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          Icon(Icons.info, size: 100.0, color: Colors.green),
          
          SizedBox(height: 20.0),

          Text(
            'About This App',
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          ),

          SizedBox(height: 10.0),

          Text(
            'Version 1.0.0',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16.0),
          ),
        ],
      ),
    );
  }
}