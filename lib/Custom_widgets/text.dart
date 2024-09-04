import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Roboto extends StatelessWidget {
  final String text;
  final double size;
  final Color color;
  final FontWeight weight;

  Roboto({
    super.key,
    required this.text,
    required this.size,
    required this.color,
    required this.weight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.abel(
        fontSize: size,
        color: color,
        fontWeight: weight,
      ),
    );
  }
}

class Montserrat extends StatelessWidget {
  final String text;
  final double size;
  final Color color;
  final FontWeight weight;

  Montserrat({
    super.key,
    required this.text,
    required this.size,
    required this.color,
    required this.weight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.lora(
        fontSize: size,
        color: color,
        fontWeight: weight,
      ),
    );
  }
}

class Poppins extends StatelessWidget {
  final String text;
  final double size;
  final Color color;
  final FontWeight weight;

  Poppins({
    super.key,
    required this.text,
    required this.size,
    required this.color,
    required this.weight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(

      text,
      style: GoogleFonts.poppins(
        fontSize: size,
        color: color,
        fontWeight: weight,
      ),
    );
  }
}
