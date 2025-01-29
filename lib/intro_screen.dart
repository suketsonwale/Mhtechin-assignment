import 'package:flutter/material.dart';

import 'customer_screen.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Center vertically
            children: [
              Text('Created By Suket Sonwale'),
              ElevatedButton(
                onPressed: () {
                  // Use context of the current Scaffold to push a new screen
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => CustomerScreen()),
                  );
                },
                child: Text('Customer Detail Screen'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

