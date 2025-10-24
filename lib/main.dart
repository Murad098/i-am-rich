import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const IAmRichApp());
}

class IAmRichApp extends StatelessWidget {
  const IAmRichApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF101820), // Elegant dark background
        appBar: AppBar(
          backgroundColor: const Color(0xFF0D1B2A),
          elevation: 10,
          centerTitle: true,
          title: ShaderMask(
            shaderCallback: (bounds) => const LinearGradient(
              colors: [Colors.amber, Colors.orangeAccent],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ).createShader(bounds),
            child: Text(
              '💎 I AM RICH 💎',
              style: GoogleFonts.poppins(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                letterSpacing: 2,
              ),
            ),
          ),
        ),
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.blueAccent.withOpacity(0.4),
                  blurRadius: 50,
                  spreadRadius: 20,
                ),
              ],
            ),
            child: const Image(
              image: NetworkImage(
                'https://img.freepik.com/premium-psd/diamond-isolated-transparent-background_943194-11400.jpg?semt=ais_hybrid&w=740&q=80',
              ),
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}
