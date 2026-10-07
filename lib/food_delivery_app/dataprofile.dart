import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';

class dataprofile extends StatefulWidget {
  const dataprofile({super.key});

  @override
  State<dataprofile> createState() => _dataprofileState();
}

class _dataprofileState extends State<dataprofile> {
//FAIRE BASILE DATA EDUKKUNNATHE (1)
  String username = '';
  String useremail = '';
  String usermobaile = '';
  String userpassword = '';
  // ignore: prefer_typing_uninitialized_variables
  var user;
  // String name = "";
  // String mobile = "";
  // String email = "";
  bool isDarkMode = true; // Dark mode switch state

  // Future<void> loadUserData() async {
  //   final prefs = await SharedPreferences.getInstance();
  //   final savedName = prefs.getString("name");

  //   print("Saved name = $savedName");
  //   setState(() {
  //     name = prefs.getString("name") ?? "";
  //     mobile = prefs.getString("mobile") ?? "";
  //     email = prefs.getString("email") ?? "";
  //   });
  // }

  File? _selectedImage;
  final ImagePicker _picker = ImagePicker();

  Future<void> _pickImage() async {
    final XFile? pickedFile = await _picker.pickImage(
      source: ImageSource.gallery,
      imageQuality: 80,
    );

    if (pickedFile != null) {
      setState(() {
        _selectedImage = File(pickedFile.path);
      });
    }
  }

  final FirebaseAuth _auth = FirebaseAuth.instance;
  Future<void>fetchUserDetails() async{
    try {
      SharedPreferences pref = await SharedPreferences.getInstance();
      String? userId = pref.getString('Useruid');
      print("Fetched User ID: $userId");
      
      //User? userId =_auth.currentUser;
      if (userId !=null && !userId.isNotEmpty){
        DocumentSnapshot usersnapshot = await FirebaseFirestore.instance
        .collection('Customer')
        .doc(userId as String?)
        .get();

        user = usersnapshot.data();
print(user);
        if(usersnapshot.exists){
          var data = usersnapshot.data()as Map<String,dynamic>;
          print("User Data : $data");
          setState(() {
            username = usersnapshot['Username']??"";
             usermobaile = usersnapshot['Usermobile']??"";
             userpassword = usersnapshot['Userpassword']??"";
            
          });

        }

      }print(userId);
      print(user);
      
    } catch (e) {
      print("error fetching user details: $e");
      
    }
  }





  @override
  void initState() {
    super.initState();
    fetchUserDetails();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Padding(
          padding: const EdgeInsets.all(5),
          child: SizedBox(
            child: Image.asset('assets/images/unnamed.png', width: 150),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Profile",
                  style: TextStyle(color: Colors.white, fontSize: 18.sp),
                ),
              ],
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Icon(
              Icons.more_horiz,
              color: const Color.fromARGB(255, 244, 243, 242),
              size: 30,
            ),
          ),
        ],
      ),

      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(height: 12),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: const Color.fromARGB(255, 241, 242, 244),
                  radius: 30.r,
                  backgroundImage: _selectedImage != null
                      ? FileImage(_selectedImage!)
                      : null,
                ),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      username,
                      style: TextStyle(color: const Color.fromARGB(255, 224, 16, 16), fontSize: 16),
                    ),
                    Text(
                      usermobaile,
                      style: TextStyle(color: const Color.fromARGB(255, 251, 37, 37), fontSize: 12),
                    ),
                  ],
                ),
                trailing: IconButton(
                  onPressed: _pickImage,
                  icon: Icon(
                    Icons.edit,
                    color: const Color.fromARGB(255, 52, 249, 17),
                  ),
                ),
              ),

              SizedBox(height: 10),
              Divider(color: Colors.grey.shade800, thickness: 0.5),

              // --- OPTIONS LIST ---

              // My Favorite Restaurants
              ListTile(
                leading: Icon(Icons.storefront_outlined, color: Colors.white),
                title: Text("My Favorite Restaurants", style: TextStyle(color: Colors.white)),
                trailing: Icon(Icons.chevron_right, color: Colors.white),
                onTap: () {},
              ),

              // Special Offers & Promo
              ListTile(
                leading: Icon(Icons.local_offer_outlined, color: Colors.white),
                title: Text("Special Offers & Promo", style: TextStyle(color: Colors.white)),
                trailing: Icon(Icons.chevron_right, color: Colors.white),
                onTap: () {},
              ),

              // Payment Methods
              ListTile(
                leading: Icon(Icons.payment, color: Colors.white),
                title: Text("Payment Methods", style: TextStyle(color: Colors.white)),
                trailing: Icon(Icons.chevron_right, color: Colors.white),
                onTap: () {},
              ),

              Divider(color: Colors.grey.shade800, thickness: 0.5),

              // Profile
              ListTile(
                leading: Icon(Icons.person_outline, color: Colors.white),
                title: Text("Profile", style: TextStyle(color: Colors.white)),
                trailing: Icon(Icons.chevron_right, color: Colors.white),
                onTap: () {},
              ),

              // Address
              ListTile(
                leading: Icon(Icons.location_on_outlined, color: Colors.white),
                title: Text("Address", style: TextStyle(color: Colors.white)),
                trailing: Icon(Icons.chevron_right, color: Colors.white),
                onTap: () {},
              ),

              // Notification
              ListTile(
                leading: Icon(Icons.notifications_none, color: Colors.white),
                title: Text("Notification", style: TextStyle(color: Colors.white)),
                trailing: Icon(Icons.chevron_right, color: Colors.white),
                onTap: () {},
              ),

              // Security
              ListTile(
                leading: Icon(Icons.security, color: Colors.white),
                title: Text("Security", style: TextStyle(color: Colors.white)),
                trailing: Icon(Icons.chevron_right, color: Colors.white),
                onTap: () {},
              ),

              // Language
              ListTile(
                leading: Icon(Icons.language, color: Colors.white),
                title: Text("Language", style: TextStyle(color: Colors.white)),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("English (US)", style: TextStyle(color: Colors.white70, fontSize: 14)),
                    SizedBox(width: 5),
                    Icon(Icons.chevron_right, color: Colors.white),
                  ],
                ),
                onTap: () {},
              ),

              // Dark Mode Switch
              ListTile(
                leading: Icon(Icons.remove_red_eye_outlined, color: Colors.white),
                title: Text("Dark Mode", style: TextStyle(color: Colors.white)),
                trailing: Switch(
                  value: isDarkMode,
                  activeThumbColor: Colors.green,
                  onChanged: (value) {
                    setState(() {
                      isDarkMode = value;
                    });
                  },
                ),
              ),

              // Help Center
              ListTile(
                leading: Icon(Icons.info_outline, color: Colors.white),
                title: Text("Help Center", style: TextStyle(color: Colors.white)),
                trailing: Icon(Icons.chevron_right, color: Colors.white),
                onTap: () {},
              ),

              // Invite Friends
              ListTile(
                leading: Icon(Icons.people_outline, color: Colors.white),
                title: Text("Invite Friends", style: TextStyle(color: Colors.white)),
                trailing: Icon(Icons.chevron_right, color: Colors.white),
                onTap: () {},
              ),

              // Logout
              ListTile(
                leading: Icon(Icons.logout, color: Colors.redAccent),
                title: Text("Logout", style: TextStyle(color: Colors.redAccent)),
                onTap: () {
                  // Logout functionality add cheyyam
                },
              ),

              SizedBox(height: 20),
            ],
          ),
        ],
      ),
    );
  }
}