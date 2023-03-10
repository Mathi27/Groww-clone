import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../pages/CustomAuth.dart';

class EmailButton extends StatefulWidget {
  const EmailButton({super.key});

  @override
  State<EmailButton> createState() => _EmailButtonState();
}

class _EmailButtonState extends State<EmailButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => CustomAuthentication()));
      },
      child: Text(
        'Use Other Email ID',
        style: GoogleFonts.roboto(
          fontSize: 14,
          color: Color(0xFF6BD19D),
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }
}
