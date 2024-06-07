import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:moments_capture/controllers/auth_controller.dart';
import 'package:moments_capture/views/screens/add_video_screen.dart';
import 'package:moments_capture/views/screens/profile_screen.dart';
import 'package:moments_capture/views/screens/search_screen.dart';
import 'package:moments_capture/views/screens/video_screen.dart';


// COLORS
const backgroundColor = Colors.black;
var buttonColor = Colors.red[400];
const borderColor = Colors.grey;


// FIREBASE
var firebaseAuth = FirebaseAuth.instance;
var firebaseStorage = FirebaseStorage.instance;
var firestore = FirebaseFirestore.instance;

//CONTROLLER
var authController = AuthController.instance;


List pages = [
  VideoScreen(),
  SearchScreen(),
  AddVideoScreen(),
  const Text('Messages Screen'),
  ProfileScreen(uid: authController.user.uid),
];