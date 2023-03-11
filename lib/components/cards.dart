import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';

class Cards extends StatefulWidget {
  final String text;
  const Cards({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  State<Cards> createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  bool _isElevated = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isElevated = !_isElevated;
        });
        showToast(
          _isElevated ? "card on" : "card off",
          context: context,
          backgroundColor: Colors.purple,
          axis: Axis.horizontal,
          position: StyledToastPosition.bottom,
          duration: const Duration(seconds: 4),
          curve: Curves.decelerate,
          animation: StyledToastAnimation.fade,
          reverseAnimation: StyledToastAnimation.fade,
          borderRadius: BorderRadius.circular(35),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 25, top: 25, right: 40, left: 40),
        height: 150,
        decoration: BoxDecoration(
          boxShadow: [
            _isElevated
                ? const BoxShadow(
                    spreadRadius: 10,
                    blurRadius: 40,
                    color: Color.fromARGB(255, 226, 226, 226),
                  )
                : const BoxShadow(
                    spreadRadius: 3,
                    blurRadius: 40,
                    color: Color.fromARGB(255, 163, 120, 170),
                  )
          ],
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color.fromARGB(255, 243, 202, 240),
              Color.fromARGB(255, 176, 87, 211),
              Color.fromARGB(255, 140, 68, 168),
            ],
          ),
        ),
        child: Center(
          child: Text(
            widget.text,
            style: GoogleFonts.actor(
              textStyle: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 34,
                letterSpacing: 1,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
