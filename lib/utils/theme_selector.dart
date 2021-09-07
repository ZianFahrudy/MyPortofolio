import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeSelector {
  static TextStyle? selectHeadline(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    if (screenWidth > 950 && screenHeight > 550) {
      return GoogleFonts.dmSerifDisplay(fontSize: 48.0, color: Colors.purple);
    } else if (screenWidth > 650 && screenHeight > 550) {
      return GoogleFonts.dmSerifDisplay(fontSize: 34.0, color: Colors.purple);
    } else {
      return GoogleFonts.dmSerifDisplay(fontSize: 24.0, color: Colors.purple);
    }
  }

  static TextStyle? selectSubHeadline(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    if (screenWidth > 715 && screenHeight > 350) {
      return GoogleFonts.poppins(fontSize: 16.0);
    } else {
      return GoogleFonts.poppins(fontSize: 14.0);
    }
  }

  static TextStyle? selectBodyText(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    if (screenWidth > 1050 && screenHeight > 850) {
      return Theme.of(context).textTheme.bodyText1;
    } else if (screenWidth > 850 && screenHeight > 700) {
      return Theme.of(context).textTheme.bodyText2;
    } else {
      return Theme.of(context).textTheme.caption;
    }
  }
}
