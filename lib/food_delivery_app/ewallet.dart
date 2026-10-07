import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:google_fonts/google_fonts.dart';

class wallet extends StatefulWidget {
  const wallet({super.key});

  @override
  State<wallet> createState() => _walletState();
}

class _walletState extends State<wallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 12, 12, 12),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 12, 12, 12),

        // leading: Image.asset(
        //   "assets/images/flutter.PNG",
        //   width: 25.w,
        //   height: 25.h,
        // ),

        title: Text("E-Wallet", style: TextStyle(color: Colors.white)),

        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          ),
          Padding(padding: const EdgeInsets.all(12), child: Icon(Icons.more_horiz)),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    
                    width: double.infinity,
                    
                    decoration: BoxDecoration(
                     gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.bottomRight,
                      
                      colors: [Color.fromARGB(255, 21, 240, 21),
                    Color.fromARGB(255, 63, 245, 13), 
                    Color.fromARGB(255, 12, 229, 62),]),
                      borderRadius: BorderRadius.circular(28),
                    ),
                            
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "     Andrew Analisis",
                              style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 30),
                              child: Text(
                                "VISA",
                                style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),
                              ),
                            ),
                            // Image.asset(
                            //  "assets/images/flutter.PNG",
                            //    width: 50.w,
                            //    height: 50.h,
                            //  ),
                          ],
                        ),
                        Text(
                          "    ****  *** *** 2345",
                          style: TextStyle(color: Colors.white,fontSize: 14,letterSpacing: 2),
                        ),
                        SizedBox(height: 6.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "      Your balance",
                              style: TextStyle(color: Colors.white,fontSize: 13,),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(" ₹9,379", style: TextStyle(color: Colors.white,fontSize: 34,fontWeight: FontWeight.bold)),
                            ),
                            
                            Padding(
                              padding: const EdgeInsets.all(12),
                              child: Container(
                                height: 40.h,
                                width: 100.w,
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 239, 245, 239),
                                  borderRadius: BorderRadius.circular(20.r),
                                ),
                                child: Center(child: Text("Top Up")),),
                            ),
                            
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Text("Transaction History",style: TextStyle(color: Colors.white,fontSize: 13,),),
                SizedBox(height: 30,),


                 Center(
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
              "You dont have any Transaction in wallet at this time",
              style: GoogleFonts.urbanist(
                color: const Color.fromARGB(255, 242, 245, 242),
                fontSize: 11.sp,
              ),
            ),
          ],
        ),
      ),
            
            
              ],
              
            ),
          ),
        ],
      ),
    //  
    
    );
  }
}