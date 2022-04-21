// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:lamalar/AnaSayfam.dart';
import 'package:lamalar/acilissayfasi.dart';



void main() {

  AssetsAudioPlayer.setupNotificationsOpenAction((notification) {
    return true;
  });
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xff19e519),
          body: AcilisSayfam(),
        ),
      ),
    );
  }
}
