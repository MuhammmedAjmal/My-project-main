import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mynewapp/food_delivery_app/Notification.dart';
import 'package:mynewapp/food_delivery_app/Orders(tapbar).dart';
import 'package:mynewapp/food_delivery_app/dataprofile.dart';
import 'package:mynewapp/food_delivery_app/ewallet.dart';
import 'package:mynewapp/food_delivery_app/message(tapbar).dart';
import 'package:mynewapp/food_delivery_app/mycart.dart';

class mainhome extends StatefulWidget {
  const mainhome({super.key});

  @override
  State<mainhome> createState() => _mainhomeState();
}

class _mainhomeState extends State<mainhome> {
  // ignore: unused_field
  int _currentIntex = 0;

  final List<Widget> _pages = [
    const Center(
      child: Text("Home", style: TextStyle(color: Colors.white)),
    ),
    const orderstapbar(),
    const message(),
    const wallet(),
    const dataprofile(),
    
  ];

  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      Icon(Icons.home, size: 30),
      Icon(Icons.list_alt_outlined, size: 30),
      Icon(Icons.message, size: 30),
      Icon(Icons.wallet, size: 30),
      Icon(Icons.person, size: 30),
    ];

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: _currentIntex == 0
          ? AppBar(
              backgroundColor: Colors.black,
              leading: Padding(
                padding: const EdgeInsets.all(8),

                child: CircleAvatar(
                  radius: 11.r,
                  foregroundImage: NetworkImage(
                    "https://png.pngtree.com/png-clipart/20230927/original/pngtree-man-avatar-image-for-profile-png-image_13001877.png",
                  ),
                ),
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Deliver to",
                    style: TextStyle(color: Colors.white, fontSize: 11.sp),
                  ),
                  Row(
                    children: [
                      Text(
                        "Times Square",
                        style: TextStyle(color: Colors.white, fontSize: 18.sp),
                      ),
                      Icon(
                        Icons.arrow_drop_down_outlined,
                        color: const Color.fromARGB(255, 7, 242, 15),
                      ),
                    ],
                  ),
                ],
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => notification()),
                      );
                    },
                    icon: Icon(Icons.notifications),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => mycart()),
                      );
                    },
                    icon: Icon(Icons.shopping_cart_outlined),
                  ),
                ),
              ],
            )
          : null,
      // body:
      body: _currentIntex == 0
          ? ListView(
            padding: EdgeInsets.all(18.w),
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Search here...",
                        prefixIcon: Icon(Icons.search, color: Colors.white),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        filled: true,
                        fillColor: const Color.fromARGB(255, 52, 53, 51),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Special Offers",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.sp,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 6.5),
                      child: Container(
                        height: 150.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 43, 230, 49),
                          borderRadius: BorderRadius.circular(16.r),
                        ),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 12),
                                  child: Text(
                                    "30%",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 45.sp,
                                      color: CupertinoColors
                                          .secondarySystemGroupedBackground,
                                    ),
                                  ),
                                ),
                                Text(
                                  "    DISCOUNT ONLY\n   VALID FOR TODAY!                     ",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.urbanist(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 180.h,
                              width: 140.w,
                              child: Image.asset(
                                fit: BoxFit.cover,
                                'assets/images/burger.png',
                                width: 100.w,
                                height: 200.h,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              height: 70.h,
                              child: Image.asset(
                                fit: BoxFit.contain,
                                'assets/images/burger.png',
                                width: 50.h,
                                height: 40.w,
                              ),
                            
                            ),Text(
                          "Hambure...",
                          style: GoogleFonts.urbanist(color: Colors.white),
                        ),
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 60.h,
                              child: Image.asset(
                                fit: BoxFit.contain,
                                'assets/images/pizza.png',
                                width: 50.w,
                                height: 40.h,
                              ),
                            ), Text(
                          "Pizza",
                          style: GoogleFonts.urbanist(color: Colors.white),
                        ),
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 60.h,
                              child: Image.asset(
                                fit: BoxFit.contain,
                                'assets/images/bbbnoodls.png',
                                width: 50.w,
                                height: 40.h,
                                
                              ),
                              
                            ),                            Text(
                          "Noodles",
                          style: GoogleFonts.urbanist(color: Colors.white),
                        ),
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 60.h,
                              child: Image.asset(
                                fit: BoxFit.contain,
                                'assets/images/meat.png',
                                width: 50.w,
                                height: 40.h,
                              ),
                            ),                            Text(
                          "Meat",
                          style: GoogleFonts.urbanist(color: Colors.white),
                        ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 12.h,),
                   
                                
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              height: 60.h,
                              child: Image.asset(
                                fit: BoxFit.contain,
                                'assets/images/vegitables.png',
                                width: 50.w,
                                height: 40.h,
                              ),
                            ),                            Text(
                          "Vegeta..",
                          style: GoogleFonts.urbanist(color: Colors.white),
                        ),
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 60.h,
                              child: Image.asset(
                                fit: BoxFit.contain,
                                'assets/images/dessert.png',
                                width: 50.w,
                                height: 40.h,
                              ),
                            ),                            Text(
                          "Dessert",
                          style: GoogleFonts.urbanist(color: Colors.white),
                        ),
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 60.h,
                              child: Image.asset(
                                fit: BoxFit.contain,
                                'assets/images/drinks.png',
                                width: 50.w,
                                height: 40.h,
                              ),
                            ),Text(
                          "Drinks",
                          style: GoogleFonts.urbanist(color: Colors.white),
                        ),
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 60.h,
                              child: Image.asset(
                                fit: BoxFit.contain,
                                'assets/images/pizza.png',
                                width: 50.w,
                                height: 40.h,
                              ),
                            ), Text(
                          "More",
                          style: GoogleFonts.urbanist(color: Colors.white),
                        ),
                          ],
                        ),
                      ],
                    ),
                   SizedBox(height: 12.h,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Discound Guaranteed!",
                    style: GoogleFonts.urbanist(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            "See All",
                            style: GoogleFonts.urbanist(
                              color: const Color.fromARGB(
                                255,
                                14,
                                233,
                                14,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 220.h,
                      width: 170.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),
                        color: const Color.fromARGB(255, 52, 47, 46),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                              height: 130.h,
                              width: 130.w,
                                
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.r),
                                
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                    "https://therecipewell.com/wp-content/uploads/2025/04/Romaine-Salad-27.jpg",
                                  ),
                                ),
                                color: const Color.fromARGB(
                                  255,
                                  44,
                                  41,
                                  30,
                                ),
                              ),
                            ),
                            Text(
                              "Mixed Salad Bond",
                              style: GoogleFonts.urbanist(
                                color: const Color.fromARGB(
                                  255,
                                  243,
                                  246,
                                  243,
                                ),
                              ),
                            ),
                            Text(
                              "1.5 km |* 4.8(1.2k)",
                              style: GoogleFonts.urbanist(
                                color: const Color.fromARGB(
                                  255,
                                  243,
                                  246,
                                  243,
                                ),
                                fontSize: 8.sp,
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  "₹6.00",
                                  style: GoogleFonts.urbanist(
                                    color: const Color.fromARGB(
                                      255,
                                      243,
                                      246,
                                      243,
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Icon(Icons.favorite_outline),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                                
                    //ALL,Hamburger,pizza,.......
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: SizedBox(
                        height: 40.h,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Chip(padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
    labelPadding: EdgeInsets.only(left: 4.w), // ഐക്കണും ടെക്സ്റ്റും തമ്മിലുള്ള അകലം
    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap, // അധികമുള്ള ബിൽറ്റ്-ഇൻ വിഡ്ത്ത്/ഹൈറ്റ് ഒഴിവാക്കാൻ
    visualDensity: VisualDensity.compact,
                                label: Text(
                                  "All",
                                  style: TextStyle(color: Colors.white),
                                ),
                                backgroundColor: const Color.fromARGB(
                                  255,
                                  10,
                                  11,
                                  9,
                                ),
                                
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadiusGeometry.circular(20.r),
                                ),
                                side: BorderSide(color: Colors.green),
                                avatar: Icon(
                                  Icons.fastfood_outlined,
                                  color: Colors.green,
                                  size: 16,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Chip(
                                label: Text(
                                  "Hamburger",
                                  style: TextStyle(color: Colors.white),
                                ),
                                backgroundColor: const Color.fromARGB(
                                  255,
                                  10,
                                  11,
                                  9,
                                ),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 8,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadiusGeometry.circular(30),
                                ),
                                side: BorderSide(color: Colors.green),
                                avatar: Icon(
                                  Icons.fastfood_outlined,
                                  color: Colors.green,
                                  size: 16,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Chip(
                                label: Text(
                                  "Pizza",
                                  style: TextStyle(color: Colors.white),
                                ),
                                backgroundColor: const Color.fromARGB(
                                  255,
                                  10,
                                  11,
                                  9,
                                ),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 8,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadiusGeometry.circular(30.sp),
                                ),
                                side: BorderSide(color: Colors.green),
                                avatar: Icon(
                                  Icons.fastfood_outlined,
                                  color: Colors.green,
                                  size: 16,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Chip(
                                label: Text(
                                  "Noodles",
                                  style: TextStyle(color: Colors.white),
                                ),
                                backgroundColor: const Color.fromARGB(
                                  255,
                                  10,
                                  11,
                                  9,
                                ),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 8,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadiusGeometry.circular(30.sp),
                                ),
                                side: BorderSide(color: Colors.green),
                                avatar: Icon(
                                  Icons.fastfood_outlined,
                                  color: Colors.green,
                                  size: 16,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Chip(
                                label: Text(
                                  "Meat",
                                  style: TextStyle(color: Colors.white),
                                ),
                                backgroundColor: const Color.fromARGB(
                                  255,
                                  10,
                                  11,
                                  9,
                                ),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 8,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadiusGeometry.circular(30.sp),
                                ),
                                side: BorderSide(color: Colors.green),
                                avatar: Icon(
                                  Icons.fastfood_outlined,
                                  color: Colors.green,
                                  size: 16,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Chip(
                                label: Text(
                                  "Drinks",
                                  style: TextStyle(color: Colors.white),
                                ),
                                backgroundColor: const Color.fromARGB(
                                  255,
                                  10,
                                  11,
                                  9,
                                ),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 8,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadiusGeometry.circular(30.sp),
                                ),
                                side: BorderSide(color: Colors.green),
                                avatar: Icon(
                                  Icons.fastfood_outlined,
                                  color: Colors.green,
                                  size: 16,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Chip(
                                label: Text(
                                  "Dessert",
                                  style: TextStyle(color: Colors.white),
                                ),
                                backgroundColor: const Color.fromARGB(
                                  255,
                                  10,
                                  11,
                                  9,
                                ),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 8,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadiusGeometry.circular(30.sp),
                                ),
                                side: BorderSide(color: Colors.green),
                                avatar: Icon(
                                  Icons.fastfood_outlined,
                                  color: Colors.green,
                                  size: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width:double.infinity,
                      height: 115.h,
                      margin: EdgeInsets.only(bottom: 16),
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 32, 33, 35),
                        borderRadius: BorderRadius.circular(24.r),
                      ),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadiusGeometry.circular(
                              12.r,
                            ),
                            child: Image.asset(
                              'assets/images/burger.png',
                              width: 80.w,
                              height: 80.h,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Burger hut",
                                  style: GoogleFonts.urbanist(
                                    color: Colors.white,
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 6.h),
                                Text(
                                  "1.2 km |*4.5(1.9k)",
                                  style: GoogleFonts.urbanist(
                                    color: Colors.white,
                                    fontSize: 8,
                                  ),
                                ),
                                SizedBox(height: 12.h),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.delivery_dining,
                                      color: const Color.fromARGB(
                                        255,
                                        52,
                                        249,
                                        17,
                                      ),
                                    ),
                                    SizedBox(width: 5.w,),
                                
                                    Text(
                                      "₹250",
                                      style: GoogleFonts.urbanist(
                                        color: Colors.white,
                                        fontSize: 8.sp,
                                      ),
                                    ),
                                   const Spacer(),
                                   Icon(Icons.favorite_outline,
                                   color: Colors.red,)
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width:double.infinity,
                      height: 115.h,
                      margin: EdgeInsets.only(bottom: 16.h),
                      padding: EdgeInsets.all(12.w),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 32, 33, 35),
                        borderRadius: BorderRadius.circular(24.r),
                      ),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadiusGeometry.circular(
                              12.r,
                            ),
                            child: Image.network(
                              "https://www.superhealthykids.com/wp-content/uploads/2021/10/best-veggie-pizza-featured-image-square-2.jpg",
                              width: 80.w,
                              height: 80.h,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Pizza Hut -Lumintu",
                                  style: GoogleFonts.urbanist(
                                    color: Colors.white,
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 6.h),
                                Text(
                                  "800 m |*4.9(2.3k)",
                                  style: GoogleFonts.urbanist(
                                    color: Colors.white,
                                    fontSize: 8.sp,
                                  ),
                                ),
                                SizedBox(height: 12.h),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.delivery_dining,
                                      color: const Color.fromARGB(
                                        255,
                                        52,
                                        249,
                                        17,
                                      ),
                                    ),
                                    SizedBox(width: 5.w,),
                                    Text(
                                      "₹300",
                                      style: GoogleFonts.urbanist(
                                        color: Colors.white,
                                        fontSize: 8.sp,
                                      ),
                                    ),
                                     Spacer(),
                                    Icon(
                                      Icons.favorite_outline,
                                      color: const Color.fromARGB(
                                        255,
                                        239,
                                        11,
                                        11,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 115.h,
                      margin: EdgeInsets.only(bottom: 16.h),
                      padding: EdgeInsets.all(12.w),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 32, 33, 35),
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadiusGeometry.circular(
                              12.r,
                            ),
                            child: Image.network(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWjiGUvoTxQJYxl9FnhWEuD1pAT0PkrI_4ca2awGyu_w&s=10",
                              width: 80.w,
                              height: 80.h,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Vegetarian Noodles",
                                  style: GoogleFonts.urbanist(
                                    color: Colors.white,
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 6.h),
                                Text(
                                  "1.7 km |*4.6(4.9k)",
                                  style: GoogleFonts.urbanist(
                                    color: Colors.white,
                                    fontSize: 8.sp,
                                  ),
                                ),
                                SizedBox(height: 12.h),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.delivery_dining,
                                      color: const Color.fromARGB(
                                        255,
                                        52,
                                        249,
                                        17,
                                      ),
                                    ),
                                    Text(
                                      "₹190",
                                      style: GoogleFonts.urbanist(
                                        color: Colors.white,
                                        fontSize: 9.sp,
                                      ),
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.favorite_outline,
                                      color: const Color.fromARGB(
                                        255,
                                        239,
                                        11,
                                        11,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 115.h,
                      margin: EdgeInsets.only(bottom: 16.h),
                      padding: EdgeInsets.all(12.w),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 32, 33, 35),
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadiusGeometry.circular(
                              12.r,
                            ),
                            child: Image.network(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5tfrBlYxnPexSxvBmsXBEQ1ZVK6wEALYvIJKR8XHE_A&s=10",
                              width: 80.w,
                              height: 80.h,
                              fit: BoxFit.cover,
                            ),
                            // child: Image.asset(
                            //   'assets/images/burger.png',
                            //   width: 80,
                            //   height: 80,
                            //   fit: BoxFit.cover,
                            // ),
                          ),
                           SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Fruit Salad-Kumpa",
                                  style: GoogleFonts.urbanist(
                                    color: Colors.white,
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 6.h),
                                Text(
                                  "2.6 km |*4.5(1.9k)",
                                  style: GoogleFonts.urbanist(
                                    color: Colors.white,
                                    fontSize: 8.sp,
                                  ),
                                ),
                                SizedBox(height: 12.h),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.delivery_dining,
                                      color: const Color.fromARGB(
                                        255,
                                        52,
                                        249,
                                        17,
                                      ),
                                    ),
                                    Text(
                                      "₹250",
                                      style: GoogleFonts.urbanist(
                                        color: Colors.white,
                                        fontSize: 8.sp,
                                      ),
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.favorite_outline,
                                      color: const Color.fromARGB(
                                        255,
                                        239,
                                        11,
                                        11,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            )
          : _pages[_currentIntex],
      bottomNavigationBar: CurvedNavigationBar(
        index: _currentIntex,
        height: 70,
        color: Color(0xFF1E1E1E),
        backgroundColor: Colors.transparent,
        buttonBackgroundColor: Color(0xFF00E676),

        items: items,
        onTap: (index) {
          setState(() {
            _currentIntex = index;
          });
        },
      ),
    );
  }
}
