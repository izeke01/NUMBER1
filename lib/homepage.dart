import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/webviews.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:url_launcher/url_launcher.dart';
import 'todaysmatches.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var isDeviceConnected = false;
  late StreamSubscription subscription;

  @override
  void initState() {
    super.initState();
    getConnection();
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

  late InterstitialAd _interstitialAd;
  bool _isAdLoaded = false;

  void _initAd() {
    InterstitialAd.load(
      adUnitId: "ca-app-pub-3940256099942544/1033173712",
      //ca-app-pub-4958281287686363/8735706035
      request: const AdRequest(),
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: onAdLoaded,
        onAdFailedToLoad: (error) {
          _interstitialAd.dispose();
          getConnection();
        },
      ),
    );
    debugPrint('INITIALIZED AGAIN BITCHES!!!');
    {}
  }

  void onAdLoaded(InterstitialAd ad) {
    _interstitialAd = ad;
    _isAdLoaded = true;
    debugPrint("AD IS LOADED");

    _interstitialAd.fullScreenContentCallback = FullScreenContentCallback(
        onAdShowedFullScreenContent: (ad) {},
        onAdDismissedFullScreenContent: (ad) {
          _interstitialAd.dispose();
          debugPrint('E DON DISPOSE');
          {}

          _initAd();
          debugPrint('CONNECTION SURE AFTER DISPOSE BOSS');
          {}
        },
        onAdFailedToShowFullScreenContent: (ad, error) async {
          _interstitialAd.dispose();

          _initAd();
        });
  }

  final Uri pltb = Uri.parse('https://www.premierleague.com/tables');
  final Uri llgtb = Uri.parse(
      'https://www.google.com/search?q=la+liga+table&rlz=1C1CHBF_enNG1013NG1013&oq=la+liga+table&aqs=chrome..69i57j0i20i263i433i512j0i512l8.20811j1j9&sourceid=chrome&ie=UTF-8#sie=lg;/g/11sqj24s0_;2;/m/09gqx;st;fp;1;;;');
  final Uri sratb = Uri.parse(
      'https://www.google.com/search?q=serie+a+table&rlz=1C1CHBF_enNG1013NG1013&oq=serie+a&aqs=chrome.4.0i271j46i131i433i512j35i39j0i131i395i433i512j0i20i263i395i433i512j69i60l3.21811j1j9&sourceid=chrome&ie=UTF-8#sie=lg;/g/11sqvtnwvb;2;/m/03zv9;st;fp;1;;;');
  final Uri lg1tb = Uri.parse(
      'https://www.google.com/search?q=ligue+1+table&rlz=1C1CHBF_enNG1013NG1013&oq=ligue+1+&aqs=chrome.2.69i57j35i39j0i20i263i433i512j0i131i433i512j0i131i395i433i512j0i395i512j69i60l2.27783j1j9&sourceid=chrome&ie=UTF-8#sie=lg;/g/11pzkdpbgw;2;/m/044hxl;st;fp;1;;;');
  final Uri bndtb = Uri.parse(
      'https://www.google.com/search?q=bundesliga+table&rlz=1C1CHBF_enNG1013NG1013&oq=bundes&aqs=chrome.3.69i59j69i57j46i131i433i512j0i20i131i263i433i512l2j0i131i433i512j69i60l2.3791j0j9&sourceid=chrome&ie=UTF-8#sie=lg;/g/11j4slbd63;2;/m/037169;st;fp;1;;;');
  final Uri chmtb = Uri.parse(
      'https://www.google.com/search?q=english+champ+table&rlz=1C1CHBF_enNG1013NG1013&oq=english+champ+table&aqs=chrome..69i57j0i10i131i433i512j0i10i512l8.15791j0j4&sourceid=chrome&ie=UTF-8#sie=lg;/g/11q9rl9dzd;2;/m/0355pl;st;fp;1;;;');

  final Uri news = Uri.parse('https://www.goal.com/en');
  final Uri uef = Uri.parse(
      'https://reddit4.soccerstreams.net/league/champions-league-live-stream/1');
  final Uri qtr = Uri.parse(
      'https://www.google.com/search?q=+world+cup+table+2022&rlz=1C1CHBF_enNG1013NG1013&sxsrf=ALiCzsZ1M5EzvA_kqdoofktEEA_CBHw_ww%3A1666238944139&ei=4MlQY6qVCOuD9u8PjeWk4AQ&ved=0ahUKEwiqhYHj9-36AhXrgf0HHY0yCUwQ4dUDCA8&uact=5&oq=+world+cup+table+2022&gs_lcp=Cgdnd3Mtd2l6EAMyBAgAEEMyBggAEAcQHjIGCAAQBxAeMgYIABAHEB4yBggAEAcQHjIGCAAQBxAeMgYIABAHEB4yBggAEAcQHjIGCAAQBxAeMgYIABAHEB46CggAEEcQ1gQQsAM6BwgjELACECc6CAgAEAgQBxAeSgQITRgBSgQIQRgASgQIRhgAUJAGWJ8MYNkSaAFwAXgBgAGlAogB5AmSAQMyLTWYAQCgAQHIAQjAAQE&sclient=gws-wiz#sie=lg;/m/0fp_8fm;2;/m/030q7;st;fp;1;;;');

  Future<void> epl() async {
    if (!await launchUrl(pltb)) {
      throw 'Could not launch $pltb';
    }
  }

  Future<void> llg() async {
    if (!await launchUrl(llgtb)) {
      throw 'Could not launch $llgtb';
    }
  }

  Future<void> seriea() async {
    if (!await launchUrl(sratb)) {
      throw 'Could not launch $sratb';
    }
  }

  Future<void> ligue1() async {
    if (!await launchUrl(lg1tb)) {
      throw 'Could not launch $lg1tb';
    }
  }

  Future<void> bundesliga() async {
    if (!await launchUrl(bndtb)) {
      throw 'Could not launch $bndtb';
    }
  }

  Future<void> engchmp() async {
    if (!await launchUrl(chmtb)) {
      throw 'Could not launch $chmtb';
    }
  }

  Future<void> uefurl() async {
    if (!await launchUrl(uef)) {
      throw 'Could not launch $uef';
    } else {}
  }

  Future<void> qatar() async {
    if (!await launchUrl(qtr)) {
      throw 'Could not launch $qtr';
    }
  }

//1
  Future<void> newsurl() async {
    if (!await launchUrl(news)) {
      throw 'Could not launch $news';
    }
  }

  void footnews() {
    if (_isAdLoaded) {
      _interstitialAd.show();
      Navigator.of(context).push(MaterialPageRoute(
        builder: (BuildContext context) => const News(),
      ));
    }
    if (_isAdLoaded = false) {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (BuildContext context) => const News(),
      ));
    }
  } //1

  Future<void> prem() async {
    await epl();
    if (_isAdLoaded) {
      _interstitialAd.show();
    }
    if (_isAdLoaded = false) {
      epl();
    }
  }

  Future<void> englishc() async {
    await engchmp();
    if (_isAdLoaded) {
      _interstitialAd.show();
    }
    if (_isAdLoaded = false) {
      engchmp();
    }
  }

  Future<void> bundes() async {
    await bundesliga();
    if (_isAdLoaded) {
      _interstitialAd.show();
    }
    if (_isAdLoaded = false) {
      bundesliga();
    }
  }

  Future<void> liga() async {
    await llg();
    if (_isAdLoaded) {
      _interstitialAd.show();
    }
    if (_isAdLoaded = false) {
      llg();
    }
  }

  Future<void> ser() async {
    await seriea();
    if (_isAdLoaded) {
      _interstitialAd.show();
    }
    if (_isAdLoaded = false) {
      seriea();
    }
  }

  Future<void> ligu() async {
    await ligue1();
    if (_isAdLoaded) {
      _interstitialAd.show();
    }
    if (_isAdLoaded = false) {
      ligue1();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
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
          "Live Football HD",
          style: TextStyle(
              fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(height: 30),
            Container(
              color: Colors.transparent,
              height: 5,
              child: Row(
                children: const [
                  SizedBox(width: 35),
                ],
              ),
            ),
            const Center(
                child: Text(
              "League Tables",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )),
            const SizedBox(
              height: 15,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: Row(
                children: [
                  const SizedBox(width: 10),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: prem,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(25)),
                          height: 100,
                          width: 100,
                          child: Image.asset(
                            'images/Football_Pallo_valmiina-cropped.jpg',
                            width: 600.0,
                            height: 240.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Premier league",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  const SizedBox(width: 20),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: englishc,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(25)),
                          height: 100,
                          width: 100,
                          child: Image.asset(
                            'images/Football_Pallo_valmiina-cropped.jpg',
                            width: 600.0,
                            height: 240.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Eng Champ",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  const SizedBox(width: 20),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: bundes,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(25)),
                          height: 100,
                          width: 100,
                          child: Image.asset(
                            'images/Football_Pallo_valmiina-cropped.jpg',
                            width: 600.0,
                            height: 240.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Bundesliga",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  const SizedBox(width: 20),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: liga,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(25)),
                          height: 100,
                          width: 100,
                          child: Image.asset(
                            'images/Football_Pallo_valmiina-cropped.jpg',
                            width: 600.0,
                            height: 240.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Laliga",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  const SizedBox(width: 20),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: ser,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(25)),
                          height: 100,
                          width: 100,
                          child: Image.asset(
                            'images/Football_Pallo_valmiina-cropped.jpg',
                            width: 600.0,
                            height: 240.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "SerieA",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  const SizedBox(width: 20),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: ligu,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(25)),
                          height: 100,
                          width: 100,
                          child: Image.asset(
                            'images/Football_Pallo_valmiina-cropped.jpg',
                            width: 600.0,
                            height: 240.0,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Ligue1",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50),
            ListTile(
                tileColor: Colors.transparent,
                style: ListTileStyle.list,
                leading: CircleAvatar(
                  child: Image.asset(
                    'images/ballimg.png',
                    fit: BoxFit.fill,
                  ),
                ),
                title: const Text(
                  "Today's Matches",
                  style: TextStyle(fontSize: 16),
                ),
                onTap: () {
                  if (_isAdLoaded) {
                    _interstitialAd.show();
                  } else {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => const Todaysmatches(),
                    ));
                  }
                }),
            const SizedBox(height: 10),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                if (_isAdLoaded) {
                  newsurl();
                  _interstitialAd.show();
                } else {
                  newsurl();
                }
              },
              child: ListTile(
                tileColor: Colors.transparent,
                style: ListTileStyle.list,
                leading: Image.asset(
                  'images/news.png',
                  fit: BoxFit.cover,
                ),
                title: const Text(
                  "Football News",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            const SizedBox(height: 10),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                if (_isAdLoaded) {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const Uefa(),
                  ));
                  _interstitialAd.show();
                } else {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const Uefa(),
                  ));
                }
              },
              child: ListTile(
                tileColor: Colors.transparent,
                style: ListTileStyle.list,
                leading: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'images/ballimg.png',
                    fit: BoxFit.cover,
                  ),
                ),
                title: const Text(
                  "UEFA Champions League",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            const SizedBox(height: 10),
            const SizedBox(height: 10),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                if (_isAdLoaded) {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const Qatar(),
                  ));
                  _interstitialAd.show();
                } else {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const Qatar(),
                  ));
                }
              },
              child: ListTile(
                tileColor: Colors.transparent,
                style: ListTileStyle.list,
                leading: Image.asset(
                  'images/news.png',
                  fit: BoxFit.fill,
                ),
                title: const Text(
                  "Qatar 2022",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
