import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/webviews.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'adhelper.dart';

class Todaysmatches extends StatefulWidget {
  const Todaysmatches({super.key});

  @override
  State<Todaysmatches> createState() => _TodaysmatchesState();
}

class _TodaysmatchesState extends State<Todaysmatches> {
  var isDeviceConnected = false;
  late StreamSubscription subscription;

  @override
  void initState() {
    super.initState();
    getConnection();
    _initAd();

    super.initState();
    OneSignal.shared.setLogLevel(OSLogLevel.debug, OSLogLevel.none);

    OneSignal.shared.setAppId("7746e8c6-cf01-4c27-9c3c-4713c8a370e1");
  }

  getConnection() => subscription = Connectivity()
          .onConnectivityChanged
          .listen((ConnectivityResult result) async {
        isDeviceConnected = await InternetConnectionChecker().hasConnection;
        if (isDeviceConnected = true) {
          debugPrint('My guy Network Dey');
          setState(() {
            _isAdLoaded = false;
          });
          _initAd();
        } else {
          debugPrint('OMO NO NETWORK GUY');
          {
            getConnection();
          }
        }
      });

  @override
  void dispose() {
    subscription.cancel();
    super.dispose();
  }

  late RewardedAd _rewardedAd;
  bool _isAdLoaded = false;

//ca-app-pub-4958281287686363/5549756604

  void _initAd() {
    RewardedAd.load(
      adUnitId: "ca-app-pub-3940256099942544/5224354917",
      request: const AdRequest(),
      rewardedAdLoadCallback: RewardedAdLoadCallback(
        onAdLoaded: onAdLoaded,
        onAdFailedToLoad: (error) {
          _rewardedAd.dispose();
          getConnection();
        },
      ),
    );
    debugPrint('INITIALIZED AGAIN BITCHES!!!');
    {}
  }

  void onAdLoaded(RewardedAd ad) {
    _rewardedAd = ad;
    _isAdLoaded = true;

    _rewardedAd.fullScreenContentCallback = FullScreenContentCallback(
        onAdShowedFullScreenContent: (ad) {},
        onAdDismissedFullScreenContent: (ad) {
          _rewardedAd.dispose();
          debugPrint('E DON DISPOSE');
          {}

          _initAd();
          debugPrint('REWARDOO CONNECTION SURE AFTER DISPOSE BOSS');
          {}
        },
        onAdFailedToShowFullScreenContent: (ad, error) async {
          _rewardedAd.dispose();

          _initAd();
        });
  }

  final AdWidget adWidget = AdWidget(ad: AdHelper.myBanner);
  final Uri pl = Uri.parse(
      'https://reddit1.soccerstreamlinks.com/sports/football/0/premier-league');
  final Uri llg = Uri.parse(
      'https://reddit1.soccerstreamlinks.com/sports/football/0/laliga');
  final Uri sra = Uri.parse(
      'https://reddit1.soccerstreamlinks.com/sports/football/0/serie-a');
  final Uri lg1 = Uri.parse(
      'https://reddit1.soccerstreamlinks.com/sports/football/0/ligue-1');
  final Uri bnd = Uri.parse(
      'https://reddit1.soccerstreamlinks.com/sports/football/0/bundesliga');
  final Uri chm = Uri.parse(
      'https://reddit1.soccerstreamlinks.com/sports/football/0/championship');

  Future<void> watchpl() async {
    if (!await launchUrl(pl)) {
      throw 'Could not launch $pl';
    }
  }

  Future<void> watchseriea() async {
    if (!await launchUrl(sra)) {
      throw 'Could not launch $sra';
    }
  }

  Future<void> watchllg() async {
    if (!await launchUrl(llg)) {
      throw 'Could not launch $llg';
    }
  }

  Future<void> watchbundes() async {
    if (!await launchUrl(bnd)) {
      throw 'Could not launch $bnd';
    }
  }

  Future<void> watchligue() async {
    if (!await launchUrl(lg1)) {
      throw 'Could not launch $lg1';
    }
  }

  Future<void> watchchamp() async {
    if (!await launchUrl(chm)) {
      throw 'Could not launch $chm';
    }
  }

  void streampl() {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (BuildContext context) => const Epl(),
    ));
    if (_isAdLoaded = true) {
      _rewardedAd.show(
          onUserEarnedReward: (AdWithoutView ad, RewardItem reward) {});
    } else {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (BuildContext context) => const Epl(),
      ));
    }
  }

  void streamseriea() {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (BuildContext context) => const Seriea(),
    ));
    if (_isAdLoaded = true) {
      _rewardedAd.show(
          onUserEarnedReward: (AdWithoutView ad, RewardItem reward) {});
    } else {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (BuildContext context) => const Seriea(),
      ));
    }
  }

  void streamlaliga() {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (BuildContext context) => const Laliga(),
    ));
    if (_isAdLoaded = true) {
      _rewardedAd.show(
          onUserEarnedReward: (AdWithoutView ad, RewardItem reward) {});
    } else {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (BuildContext context) => const Laliga(),
      ));
    }
  }

  void streambundesliga() {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (BuildContext context) => const Bundesliga(),
    ));
    if (_isAdLoaded = true) {
      _rewardedAd.show(
          onUserEarnedReward: (AdWithoutView ad, RewardItem reward) {});
    } else {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (BuildContext context) => const Bundesliga(),
      ));
    }
  }

  void streamchampionship() {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (BuildContext context) => const Championship(),
    ));
    if (_isAdLoaded = true) {
      _rewardedAd.show(
          onUserEarnedReward: (AdWithoutView ad, RewardItem reward) {});
    } else {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (BuildContext context) => const Championship(),
      ));
    }
  }

  void streamligue1() {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (BuildContext context) => const Ligue1(),
    ));
    if (_isAdLoaded = true) {
      _rewardedAd.show(
          onUserEarnedReward: (AdWithoutView ad, RewardItem reward) {});
    } else {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (BuildContext context) => const Ligue1(),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Row(
          children: [
            const SizedBox(width: 10),
            CircleAvatar(
              child: Image.asset(
                'images/ballimg.png',
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
        title: const Text(
          "Stream Room",
          style: TextStyle(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(height: 5),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                  "Note: This app does not own any channel required for viewing soccer matches; we will lead you to already available online sites to watch games, beware of ads on these sites."),
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: streampl,
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage("images/ball.jpg"),
                              fit: BoxFit.cover),
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(21),
                        ),
                      ),
                    ),
                    const SizedBox(height: 9),
                    const Text(
                      "Premier League",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                const SizedBox(width: 40),
                Column(
                  children: [
                    GestureDetector(
                      onTap: streamlaliga,
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage("images/ball.jpg"),
                              fit: BoxFit.cover),
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(21),
                        ),
                      ),
                    ),
                    const SizedBox(height: 9),
                    const Text(
                      "La liga",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: streamseriea,
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage("images/ball.jpg"),
                              fit: BoxFit.cover),
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(21),
                        ),
                      ),
                    ),
                    const SizedBox(height: 9),
                    const Text(
                      "Serie A",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                const SizedBox(width: 40),
                Column(
                  children: [
                    GestureDetector(
                      onTap: streamligue1,
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage("images/ball.jpg"),
                              fit: BoxFit.cover),
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(21),
                        ),
                      ),
                    ),
                    const SizedBox(height: 9),
                    const Text(
                      "Ligue 1",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: streambundesliga,
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage("images/ball.jpg"),
                              fit: BoxFit.cover),
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(21),
                        ),
                      ),
                    ),
                    const SizedBox(height: 9),
                    const Text(
                      "Bundesliga",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                const SizedBox(width: 40),
                Column(
                  children: [
                    GestureDetector(
                      onTap: streamchampionship,
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage("images/ball.jpg"),
                              fit: BoxFit.cover),
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(21),
                        ),
                      ),
                    ),
                    const SizedBox(height: 9),
                    const Text(
                      "English Champ",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
