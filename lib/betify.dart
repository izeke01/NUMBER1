import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/homepage.dart';
import 'package:flutter_application_1/webviews.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'adhelper.dart';

class Betify extends StatefulWidget {
  const Betify({super.key});

  @override
  State<Betify> createState() => _BetifyState();
}

class _BetifyState extends State<Betify> {
  late BannerAd _bannerAd;
  bool _isbanner = false;

  var isDeviceConnected = false;
  late StreamSubscription subscription;

  @override
  void initState() {
    _initAd();
    getConnection();
    _initbannerad();
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

//ca-app-pub-3940256099942544/5224354917

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
          debugPrint('REWARD CONNECTION SURE AFTER DISPOSE BOSS');
          {}
        },
        onAdFailedToShowFullScreenContent: (ad, error) async {
          _rewardedAd.dispose();

          _initAd();
        });
  }

  final AdWidget adWidget = AdWidget(ad: AdHelper.myBanner);
  final Uri b9ja = Uri.parse(
      'https://sports.bet9ja.com/?_gl=1*1d2ju7i*_gcl_aw*R0NMLjE2NjU0NTA5NzQuQ2owS0NRandoWS1hQmhDVUFSSXNBTE5JQzA0TGxkS2U1ZWNETWZ2ZVhVY0ZNSWJxUDM0ckI4Yk5SS2VfOWZpWU5nMHVWZDBlSWFxNlVPWWFBa0tERUFMd193Y0I.');
  final Uri llg = Uri.parse(
      'https://ng.1x001.com/en?tag=d_757773m_97c_1xbet_ng_october&gclid=CjwKCAjw5P2aBhAlEiwAAdY7dCYLGwox2Lcy6z0Ks2naAqdMNY2e1Ux1grsOgAJL8aUo-siEEfeLSxoCsHoQAvD_BwE');
  final Uri sra = Uri.parse('https://www.betking.com/');
  final Uri bnd = Uri.parse(
      'https://www.sportybet.com/ng/?utm_source=google&utm_medium=cpc&utm_campaign=11749214843&utm_content=119315394172&utm_term=sportybet&utm_source=google&utm_medium=cpc&utm_campaign=11749214843&utm_content=119315394172&utm_term=sportybet&gclid=CjwKCAjw5P2aBhAlEiwAAdY7dIO_UQk9nwh83pB_K4vzFuMHpr28_umfS03BAqQMJ4YIkhjBAvdcthoCNxIQAvD_BwE');
  final Uri lg1 = Uri.parse(
      'https://reddit1.soccerstreamlinks.com/sports/football/0/bundesliga');
  final Uri chm = Uri.parse(
      'https://reddit1.soccerstreamlinks.com/sports/football/0/championship');

  Future<void> watchpl() async {
    if (!await launchUrl(b9ja)) {
      throw 'Could not launch $b9ja';
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

  Future<void> b9jah() async {
    await watchpl();
    if (_isAdLoaded = true) {
      _rewardedAd.show(
          onUserEarnedReward: (AdWithoutView ad, RewardItem reward) {});
    } else {}
  }

  Future<void> betking() async {
    await watchseriea();
    if (_isAdLoaded) {
      _rewardedAd.show(
          onUserEarnedReward: (AdWithoutView ad, RewardItem reward) {});
    } else {
      debugPrint('FAILED TO LOAD EM ADS');
      {}
      getConnection();
    }
  }

  void xbet() {
    if (_isAdLoaded) {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (BuildContext context) => const Webs2(),
      ));
      _rewardedAd.show(
          onUserEarnedReward: (AdWithoutView ad, RewardItem reward) {});
    } else {
      debugPrint('FAILED TO LOAD EM ADS');
      {}
      getConnection();
      Navigator.of(context).push(MaterialPageRoute(
        builder: (BuildContext context) => const Webs2(),
      ));
    }
  }

  Future<void> sporty() async {
    await watchbundes();
    if (_isAdLoaded) {
      _rewardedAd.show(
          onUserEarnedReward: (AdWithoutView ad, RewardItem reward) {});
    } else {
      debugPrint('FAILED TO LOAD EM ADS');
      {}
      getConnection();
    }
  }

  _initbannerad() {
    _bannerAd = BannerAd(
      size: AdSize.banner,
      adUnitId: "ca-app-pub-3940256099942544/6300978111",
      listener: BannerAdListener(
        onAdLoaded: (ad) {
          setState(() {
            _isbanner = true;
          });
        },
        onAdFailedToLoad: (ad, error) {
          setState(() {
            _isbanner = false;
          });
          _initbannerad();
        },
      ),
      request: const AdRequest(),
    );
    _bannerAd.load();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: _isbanner
          ? Container(
              height: _bannerAd.size.height.toDouble(),
              width: _bannerAd.size.width.toDouble(),
              child: AdWidget(ad: _bannerAd),
            )
          : SizedBox(),
      body: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          Center(
            child: GestureDetector(
              child: FloatingActionButton(
                backgroundColor: Colors.red,
                enableFeedback: true,
                child: const Icon(Icons.tv, color: Colors.black, size: 35),
                onPressed: () {
                  if (_isAdLoaded = true) {
                    _rewardedAd.show(
                        onUserEarnedReward:
                            (AdWithoutView ad, RewardItem reward) {});
                  }
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const Homepage(),
                  ));
                },
              ),
            ),
          ),
          const SizedBox(height: 10),
          const Text("Watch Matches", style: TextStyle(color: Colors.white)),
          const SizedBox(
            height: 70,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  GestureDetector(
                    onTap: xbet,
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
                    "1XBET",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )
                ],
              ),
              const SizedBox(width: 40),
              Column(
                children: [
                  GestureDetector(
                    onTap: b9jah,
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
                    "Bet9ja",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )
                ],
              ),
            ],
          ),
          const SizedBox(height: 60),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  GestureDetector(
                    onTap: betking,
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
                    "BetKing",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )
                ],
              ),
              const SizedBox(width: 40),
              Column(
                children: [
                  GestureDetector(
                    onTap: sporty,
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
                    "SportyBet",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
