import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      title: "isMyPcOnFire",
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "N O",
                style: TextStyle(fontSize: 50),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "- WHATEVER CHECK MY GITHUB -",
                style: TextStyle(
                    fontSize: 20, letterSpacing: 3, color: Colors.white24),
              ),
              SizedBox(
                height: 10,
              ),
              Link(
                target: LinkTarget.self,
                uri: Uri.parse("https://github.com/PINAK-TILAVAT"),
                builder: (context, followLink) => ElevatedButton(
                  onPressed: followLink,
                  child: Icon(Icons.link, size: 50, color: Colors.white24),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
