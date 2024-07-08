import 'package:flutter/material.dart';
import 'experience.dart';
import 'personal_info.dart';
import 'languages.dart';
import 'cover_letter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Marcus Wassermann Lebenslauf',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        textTheme: TextTheme(
          displayLarge: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 36,
            fontWeight: FontWeight.bold,
            color: Colors.lightGreen.shade900,
          ),
          titleLarge: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.lightGreen.shade800,
          ),
          bodyLarge: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 18,
            color: Colors.grey.shade800,
          ),
          bodyMedium: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 16,
            color: Colors.grey.shade600,
          ),
        ),
      ),
      home: const CoverPage(),
      routes: {
        '/cover_letter': (context) => const CoverLetterPage(),
        '/home': (context) => const MyHomePage(),
      },
    );
  }
}

class CoverPage extends StatelessWidget {
  const CoverPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/home');
              },
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: Image.asset(
                  'assets/logo-transparent-png.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(height: 24.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
              child: const Text('Lebenslauf anzeigen'),
            ),
          ],
        ),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lebenslauf'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 24.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/bild.png',
                  width: 200, // Größere Breite für das Bild
                  height: 450, // Größere Höhe für das Bild
                  fit: BoxFit.cover,
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            const SizedBox(height: 24.0),
            const PersonalInfo(),
            const SizedBox(height: 24.0),
            const Divider(height: 1, color: Colors.grey),
            const SizedBox(height: 24.0),
            Experience(),
            const SizedBox(height: 24.0),
            const Divider(height: 1, color: Colors.grey),
            const SizedBox(height: 24.0),
            Languages(),
            const SizedBox(height: 24.0),
            Image.asset(
              'assets/signature.png',
              width: 200,
              height: 75,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 24.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/cover_letter');
              },
              child: const Text('Anschreiben anzeigen'),
            ),
          ],
        ),
      ),
    );
  }
}

class CoverLetterPage extends StatelessWidget {
  const CoverLetterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Anschreiben'),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(24.0),
        child: CoverLetter(),
      ),
    );
  }
}
