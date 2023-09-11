import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zest_betting_tips/admin.dart';
import 'package:zest_betting_tips/draft.dart';
import 'package:zest_betting_tips/homepage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:firedart/firedart.dart';
import 'package:zest_betting_tips/splash_screen.dart';
import 'package:zest_betting_tips/welcome.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:device_apps/device_apps.dart';

const apiKey = "AIzaSyCnOv0A7yf3X1DThIYqF28ZOlkj13sJOzo";
const projectID = "pure-cd74e";

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Future<String> getPackageName() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();

    return packageInfo.packageName;
  }

  // bool isInstalled =
  //     await DeviceApps.isAppInstalled('com.android.packageinstaller');

  PackageInfo packageInfo = await PackageInfo.fromPlatform();

  String appName = packageInfo.installerStore.toString();

  print("my output " + appName);
  // print(isInstalled);

  await Firebase.initializeApp(
      // options: FirebaseOptions(
      //   apiKey: "AIzaSyCnOv0A7yf3X1DThIYqF28ZOlkj13sJOzo",
      //   authDomain: "pure-cd74e.firebaseapp.com",
      //   projectId: "pure-cd74e",
      //   storageBucket: "pure-cd74e.appspot.com",
      //   messagingSenderId: "959704722972",
      //   appId: "1:959704722972:web:4a434e1f94ad6f44b9b9d9",
      //   measurementId: "G-BT8WLDEQ9H",
      // ),
      );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pure Tips',
      home: Homepage(),
    );
  }
}
