import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStyles {
  static final rubik = GoogleFonts.rubik();

  // Naming convention: [fontFamily]_[fontSize]_[color]_[fontWeight]

  static final TextStyle rubik13grey82 = rubik.copyWith(
    fontSize: 13,
    fontWeight: FontWeight.w100,
    color: const Color.fromARGB(255, 82, 82, 82), 
  );
  static final TextStyle rubik15black22 = rubik.copyWith(
    fontSize: 15,
    color: const Color.fromARGB(255, 2, 2, 2), 
    fontWeight: FontWeight.w200,
  );
  static final TextStyle rubik17black22 = rubik.copyWith(
    fontSize: 17,
    color: const Color.fromARGB(255, 2, 2, 2), 
    fontWeight: FontWeight.w600,
  );
  static final TextStyle rubik12black22 = rubik.copyWith(
    fontSize: 12,
    color: const Color.fromARGB(255, 2, 2, 2), 
    fontWeight: FontWeight.w600,
  );
  static final TextStyle rubik15white22 = rubik.copyWith(
    fontSize: 18,
    color: Colors.white, 
    fontWeight: FontWeight.w600,
  );
  static final TextStyle rubik18black22w100 = rubik.copyWith(
    fontSize: 18,
    color: const Color.fromARGB(255, 2, 2, 2), 
    fontWeight: FontWeight.w100,
  );
  static final TextStyle rubik14black22 = rubik.copyWith(
    fontSize: 14,
    color: const Color.fromARGB(255, 2, 2, 2), 
    fontWeight: FontWeight.w100,
  );
  static final TextStyle rubik16black22 = rubik.copyWith(
    fontSize: 16,
    color: const Color.fromARGB(255, 2, 2, 2), 
    fontWeight: FontWeight.w100,
  );
  static final TextStyle rubik18black22w600 = rubik.copyWith(
    fontSize: 18,
    color: const Color.fromARGB(255, 2, 2, 2), 
    fontWeight: FontWeight.w600,
  );
  static final TextStyle rubik17black22w200 = rubik.copyWith(
    fontSize: 17,
    color: const Color.fromARGB(255, 2, 2, 2), 
    fontWeight: FontWeight.w500,
  );
  static final TextStyle rubik14black22w200 = rubik.copyWith(
    fontSize: 14,
    color: const Color.fromARGB(255, 101, 101, 101), 
    fontWeight: FontWeight.w200,
  );
  static final TextStyle rubik12black22w200 = rubik.copyWith(
    fontSize: 12,
    color: const Color.fromARGB(255, 101, 101, 101), 
    fontWeight: FontWeight.w200,
  );
  static final TextStyle rubik12black33w200 = rubik.copyWith(
    fontSize: 12,
    color: const Color.fromARGB(255, 53, 53, 53), 
    fontWeight: FontWeight.w200,
  );
  static final TextStyle rubik8black33w200 = rubik.copyWith(
    fontSize: 8,
    color: const Color.fromARGB(255, 119, 119, 119), 
    fontWeight: FontWeight.w200,
  );
}
