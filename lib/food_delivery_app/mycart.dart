import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:google_fonts/google_fonts.dart';

class mycart extends StatefulWidget {
  const mycart({super.key});

  @override
  State<mycart> createState() => _mycartState();
}

class _mycartState extends State<mycart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Icon(
          Icons.arrow_back,
          color: const Color.fromARGB(255, 245, 233, 233),
        ),
        title: Text(
          "My Cart",
          style: GoogleFonts.urbanist(
            color: const Color.fromARGB(255, 242, 245, 242),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Icon(
              Icons.more_horiz,
              color: const Color.fromARGB(240, 242, 238, 238),
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "Empty",
              style: GoogleFonts.urbanist(
                color: const Color.fromARGB(255, 242, 245, 242),
                fontSize: 15.sp,
              ),
            ),
            Text(
              "You dont have any food in cart at this time",
              style: GoogleFonts.urbanist(
                color: const Color.fromARGB(255, 242, 245, 242),
                fontSize: 11.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
