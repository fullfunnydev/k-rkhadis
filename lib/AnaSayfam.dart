// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lamalar/EkranStringYaziFontRenk.dart';
import 'package:lamalar/veriler.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
class AnaSayfam extends StatefulWidget {
  const AnaSayfam({Key? key}) : super(key: key);

  @override
  State<AnaSayfam> createState() => _AnaSayfamState();
}

class _AnaSayfamState extends State<AnaSayfam> {
  double YaziBoyutu = 16;
  int ResimIndex = 0;
  yaziBoyutuArttir() {
    setState(() {
      YaziBoyutu++;
    });
  }

  yaziBoyutuAzalt() {
    setState(() {
      YaziBoyutu--;
    });
  }


  AssetsAudioPlayer player = AssetsAudioPlayer();

  late InterstitialAd gecisileri;
  bool isLoadingileri=false;

  void initAddileri() {
    InterstitialAd.load(
        adUnitId:'ca-app-pub-3853518386312922/7601386715',
        request: AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
            onAdLoaded: onAdLoaded, onAdFailedToLoad: (error) {}));
  }

  void onAdLoaded(InterstitialAd ad) {
    gecisileri=ad;
    isLoadingileri=true;
  }
//************************************************************************
  late InterstitialAd gecisileri2;
  bool isLoadingileri2=false;

  void initAddileri2() {
    InterstitialAd.load(
        adUnitId:'ca-app-pub-3853518386312922/2349060030',
        request: AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
            onAdLoaded: onAdLoaded2, onAdFailedToLoad: (error) {}));
  }

  void onAdLoaded2(InterstitialAd ad) {
    gecisileri2=ad;
    isLoadingileri2=true;
  }
  //*******************************************************************
  late InterstitialAd gecisileri3;
  bool isLoadingileri3=false;

  void initAddileri3() {
    InterstitialAd.load(
        adUnitId:'ca-app-pub-3853518386312922/9844406673',
        request: AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
            onAdLoaded: onAdLoaded3, onAdFailedToLoad: (error) {}));
  }

  void onAdLoaded3(InterstitialAd ad) {
    gecisileri3=ad;
    isLoadingileri3=true;
  }
  //*******************************************************************
  late InterstitialAd gecisileri4;
  bool isLoadingileri4=false;

  void initAddileri4() {
    InterstitialAd.load(
        adUnitId:'ca-app-pub-3853518386312922/3278998327',
        request: AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
            onAdLoaded: onAdLoaded4, onAdFailedToLoad: (error) {}));
  }

  void onAdLoaded4(InterstitialAd ad) {
    gecisileri4=ad;
    isLoadingileri4=true;
  }
//***************************************************
  late InterstitialAd gecisileri5;
  bool isLoadingileri5=false;

  void initAddileri5() {
    InterstitialAd.load(
        adUnitId:'ca-app-pub-3853518386312922/3911206107',
        request: AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
            onAdLoaded: onAdLoaded5, onAdFailedToLoad: (error) {}));
  }

  void onAdLoaded5(InterstitialAd ad) {
    gecisileri5=ad;
    isLoadingileri5=true;
  }
//**************************************************
  late InterstitialAd gecisigeri1;
  bool isLoadingeri1=false;

  void initAddigeri1() {
    InterstitialAd.load(
        adUnitId:'ca-app-pub-3853518386312922/8971961091',
        request: AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
            onAdLoaded: onAdLoaded1, onAdFailedToLoad: (error) {}));
  }

  void onAdLoaded1(InterstitialAd ad) {
    gecisigeri1=ad;
    isLoadingeri1=true;
  }
//**************************************************
  late InterstitialAd gecisigeri2;
  bool isLoadingeri2=false;

  void initAddigeri2() {
    InterstitialAd.load(
        adUnitId:'ca-app-pub-3853518386312922/3719634412',
        request: AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
            onAdLoaded: onAdLoaded122, onAdFailedToLoad: (error) {}));
  }

  void onAdLoaded122(InterstitialAd ad) {
    gecisigeri2=ad;
    isLoadingeri2=true;
  }
  //***********************************************
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initAddileri();
    initAddileri2();
    initAddileri3();
    initAddileri4();
    initAddileri5();
    initAddigeri1();
    initAddigeri2();
  }

  geriRklamGoster(){
    if(isLoadingeri1){
      switch(ResimIndex){
        case 8:gecisigeri1.show();
        break;
        case 16:gecisigeri2.show();

      }
    }
  }
  ileriReklamGoster(){
    if(isLoadingileri){
      switch(ResimIndex){
        case 8:gecisileri.show();
        break;
        case 16:gecisileri2.show();
        break;
        case 24:gecisileri3.show();
        break;
        case 32:gecisileri4.show();
        break;
        case 40:gecisileri5.show();
        break;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    double wid = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xff19e519),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(22),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  image: DecorationImage(
                      image: AssetImage('images/resim3.jpg'),
                      fit: BoxFit.fitHeight)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      height: wid / 3,
                      width: wid / 1.50,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          image: DecorationImage(
                            image: AssetImage('images/gifim.gif'),
                            fit: BoxFit.fill,
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: BlurryContainer(
                      height: wid / 0.75,
                      width: wid / 1.05,
                      bgColor: Colors.black,
                      blur: 1,
                      borderRadius: BorderRadius.circular(20),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                                '${TumHadiler[ResimIndex].hadis}', //Hadisler burada gösteriliyor
                                style: GoogleFonts.patrickHand(
                                  color: Colors.yellowAccent,
                                  fontSize: YaziBoyutu,
                                  fontWeight: FontWeight.bold,
                                )),
                            Text(''),
                            BlurryContainer(
                              //hadis ileri geri fonksiyonları
                              height: wid / 5,
                              width: wid / 1.05,
                              bgColor: Colors.black,
                              borderRadius: BorderRadius.circular(12),
                              blur: 1,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  fontCircle(
                                      yaziBoyutuFonsksiyonu: () {
                                        setState(() {
                                          ResimIndex--;
                                          geriRklamGoster();
                                          if (ResimIndex == -1) {
                                            ResimIndex = TumHadiler.length - 1;
                                          }
                                        });
                                        player.open(Audio('music/efeskt.mp3'));
                                      },
                                      radiusDegeri: 35,
                                      resimUrl:
                                          'https://icons.iconarchive.com/icons/hopstarter/rounded-square/256/Button-Previous-icon.png'),
                                  Text('${ResimIndex + 1}.Hadis',
                                      style: EkranYaziFontRenk.ileriGeriFontu),
                                  fontCircle(
                                      yaziBoyutuFonsksiyonu: () {
                                        setState(() {
                                          ResimIndex++;
                                          ileriReklamGoster();
                                          if (ResimIndex == TumHadiler.length) {
                                            ResimIndex = 0;
                                          }
                                          player.open(Audio('music/efeskt.mp3'));
                                        });
                                                  print('Resim İndex = > ${ResimIndex}');
                                      },
                                      radiusDegeri: 35,
                                      resimUrl:
                                          'https://icons.iconarchive.com/icons/hopstarter/rounded-square/256/Button-Next-icon.png')
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: BlurryContainer(
                      height: wid / 7,
                      width: wid / 1.10,
                      blur: 1,
                      bgColor: Colors.black,
                      borderRadius: BorderRadius.circular(22),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          fontCircle(
                            yaziBoyutuFonsksiyonu: () {
                              yaziBoyutuArttir();
                            },
                            radiusDegeri: 25,
                            resimUrl:
                                'https://icons.iconarchive.com/icons/hopstarter/button/256/Button-Add-icon.png',
                          ),
                          Text(
                            'Yazı Fontunu Ayarla',
                            style: EkranYaziFontRenk.yaziFontREnkAyari2,
                          ),
                          fontCircle(
                              yaziBoyutuFonsksiyonu: () {
                                yaziBoyutuAzalt();
                              },
                              radiusDegeri: 25,
                              resimUrl:
                                  'https://icons.iconarchive.com/icons/hopstarter/button/256/Button-Delete-icon.png')
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class fontCircle extends StatelessWidget {
  String? resimUrl;
  double radiusDegeri;
  Function yaziBoyutuFonsksiyonu;

  fontCircle({
    required this.yaziBoyutuFonsksiyonu,
    required this.radiusDegeri,
    required this.resimUrl,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        yaziBoyutuFonsksiyonu();
      },
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: radiusDegeri,
        child: Image.network('${resimUrl}'),
      ),
    );
  }
}
