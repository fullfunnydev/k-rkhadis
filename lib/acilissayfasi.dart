// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:lamalar/AnaSayfam.dart';
import 'package:lottie/lottie.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class AcilisSayfam extends StatefulWidget {
  AcilisSayfam({Key? key}) : super(key: key);

  @override
  State<AcilisSayfam> createState() => _AcilisSayfamState();
}

class _AcilisSayfamState extends State<AcilisSayfam> {
  AssetsAudioPlayer player = AssetsAudioPlayer();

  late InterstitialAd interstitialAd;
  bool isLoading=false;

  void initAdd() {
    InterstitialAd.load(
        adUnitId:'ca-app-pub-3853518386312922/1520012331',
        request: AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
            onAdLoaded: onAdLoaded, onAdFailedToLoad: (error) {}));
  }

  void onAdLoaded(InterstitialAd ad) {
    interstitialAd=ad;
    isLoading=true;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initAdd();
  }

  reklamGoster(){
    if(isLoading){
      interstitialAd.show();
    }
  }

  @override
  Widget build(BuildContext context) {
    var yukseklik = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/allah.gif'), fit: BoxFit.fill)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: BlurryContainer(
                  width: yukseklik / 1,
                  height: yukseklik / 0.54,
                  blur: 1,
                  borderRadius: BorderRadius.circular(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          reklamGoster();
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => AnaSayfam()),
                          );
                          player.open(Audio('music/besmele.mp3'));

                        },
                        child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          radius: 80,
                          child: Lottie.network(
                              "https://assets4.lottiefiles.com/packages/lf20_5tvcbbnr.json"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
