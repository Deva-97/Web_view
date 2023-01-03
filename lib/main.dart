import 'package:flutter/material.dart';
import 'package:web_view/webpage_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Homepage',
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: const Text(
          'Home',
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: MaterialButton(
                color: Colors.white,
                child: const Image(
                    image: AssetImage('images/onwords logo.png')
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const WebView()));
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}





