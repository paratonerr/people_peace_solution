import 'package:firebase_admob/firebase_admob.dart';


class Addmob{
  static final appIDTest=FirebaseAdMob.testAppId;
  static addmobInitialize(){
    FirebaseAdMob.instance.initialize(appId: appIDTest);
  }
  static BannerAd buildBannerAd(){
    return  BannerAd(
      adUnitId: BannerAd.testAdUnitId,
      size: AdSize.smartBanner,
      targetingInfo: targetingInfo,
      listener: (MobileAdEvent event) {
      },
    );
  }

  static InterstitialAd adInterstitialAd (){
    return InterstitialAd(
      adUnitId: InterstitialAd.testAdUnitId,
      targetingInfo: targetingInfo,
      listener: (MobileAdEvent event) {
        print("InterstitialAd event is $event");
      },
    );

  }

  static final MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
    keywords: <String>['flutterio', 'beautiful apps'],
    contentUrl: 'https://flutter.io',
     childDirected: false,
     testDevices: <String>[], // Android emulators are considered test devices
  );

}