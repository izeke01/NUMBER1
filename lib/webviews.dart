import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Webs extends StatefulWidget {
  const Webs({super.key});

  @override
  State<Webs> createState() => _WebsState();
}

class _WebsState extends State<Webs> {
  late WebViewController _webViewController;
  late BannerAd _bannerAd;
  bool _isbanner = false;

  @override
  void initState() {
    super.initState();
    _initbannerad();
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
      body: WillPopScope(
        onWillPop: () async {
          if (await _webViewController.canGoBack()) {
            _webViewController.goBack();
            return false;
          } else {
            return true;
          }
        },
        child: WebView(
          initialUrl:
              'https://ng.1x001.com/en?tag=d_757773m_97c_1xbet_ng_october&gclid=CjwKCAjw5P2aBhAlEiwAAdY7dCYLGwox2Lcy6z0Ks2naAqdMNY2e1Ux1grsOgAJL8aUo-siEEfeLSxoCsHoQAvD_BwE',
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController controller) {
            _webViewController = controller;
          },
        ),
      ),
      bottomNavigationBar: _isbanner
          ? Container(
              height: _bannerAd.size.height.toDouble(),
              width: _bannerAd.size.width.toDouble(),
              child: AdWidget(ad: _bannerAd),
            )
          : SizedBox(),
    );
  }
}

class Webs2 extends StatefulWidget {
  const Webs2({super.key});

  @override
  State<Webs2> createState() => _Webs2State();
}

class _Webs2State extends State<Webs2> {
  late WebViewController _webViewController;
  late BannerAd _bannerAd;
  bool _isbanner = false;

  @override
  void initState() {
    super.initState();
    _initbannerad();
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
      body: WillPopScope(
        onWillPop: () async {
          if (await _webViewController.canGoBack()) {
            _webViewController.goBack();
            return false;
          } else {
            return true;
          }
        },
        child: WebView(
          initialUrl:
              'https://sports.bet9ja.com/?_gl=1*1d2ju7i*_gcl_aw*R0NMLjE2NjU0NTA5NzQuQ2owS0NRandoWS1hQmhDVUFSSXNBTE5JQzA0TGxkS2U1ZWNETWZ2ZVhVY0ZNSWJxUDM0ckI4Yk5SS2VfOWZpWU5nMHVWZDBlSWFxNlVPWWFBa0tERUFMd193Y0I.',
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController controller) {
            _webViewController = controller;
          },
        ),
      ),
      bottomNavigationBar: _isbanner
          ? Container(
              height: _bannerAd.size.height.toDouble(),
              width: _bannerAd.size.width.toDouble(),
              child: AdWidget(ad: _bannerAd),
            )
          : SizedBox(),
    );
  }
}

class Webs3 extends StatefulWidget {
  const Webs3({super.key});

  @override
  State<Webs3> createState() => _Webs3State();
}

class _Webs3State extends State<Webs3> {
  late WebViewController _webViewController;
  late BannerAd _bannerAd;
  bool _isbanner = false;

  @override
  void initState() {
    super.initState();
    _initbannerad();
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
      body: WillPopScope(
        onWillPop: () async {
          if (await _webViewController.canGoBack()) {
            _webViewController.goBack();
            return false;
          } else {
            return true;
          }
        },
        child: WebView(
          initialUrl: 'https://www.betking.com/',
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController controller) {
            _webViewController = controller;
          },
        ),
      ),
      bottomNavigationBar: _isbanner
          ? Container(
              height: _bannerAd.size.height.toDouble(),
              width: _bannerAd.size.width.toDouble(),
              child: AdWidget(ad: _bannerAd),
            )
          : SizedBox(),
    );
  }
}

class Webs4 extends StatefulWidget {
  const Webs4({super.key});

  @override
  State<Webs4> createState() => _Webs4State();
}

class _Webs4State extends State<Webs4> {
  late WebViewController _webViewController;
  late BannerAd _bannerAd;
  bool _isbanner = false;

  @override
  void initState() {
    super.initState();
    _initbannerad();
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
      body: WillPopScope(
        onWillPop: () async {
          if (await _webViewController.canGoBack()) {
            _webViewController.goBack();
            return false;
          } else {
            return true;
          }
        },
        child: WebView(
          initialUrl:
              'https://www.sportybet.com/ng/?utm_source=google&utm_medium=cpc&utm_campaign=11749214843&utm_content=119315394172&utm_term=sportybet&utm_source=google&utm_medium=cpc&utm_campaign=11749214843&utm_content=119315394172&utm_term=sportybet&gclid=CjwKCAjw5P2aBhAlEiwAAdY7dIO_UQk9nwh83pB_K4vzFuMHpr28_umfS03BAqQMJ4YIkhjBAvdcthoCNxIQAvD_BwE',
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController controller) {
            _webViewController = controller;
          },
        ),
      ),
      bottomNavigationBar: _isbanner
          ? Container(
              height: _bannerAd.size.height.toDouble(),
              width: _bannerAd.size.width.toDouble(),
              child: AdWidget(ad: _bannerAd),
            )
          : SizedBox(),
    );
  }
}

class Epl extends StatefulWidget {
  const Epl({super.key});

  @override
  State<Epl> createState() => _EplState();
}

class _EplState extends State<Epl> {
  late WebViewController _webViewController;
  late BannerAd _bannerAd;
  bool _isbanner = false;

  @override
  void initState() {
    super.initState();
    _initbannerad();
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
      body: WillPopScope(
        onWillPop: () async {
          if (await _webViewController.canGoBack()) {
            _webViewController.goBack();
            return false;
          } else {
            return true;
          }
        },
        child: WebView(
          initialUrl:
              'https://reddit1.soccerstreamlinks.com/sports/football/0/premier-league',
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController controller) {
            _webViewController = controller;
          },
        ),
      ),
      bottomNavigationBar: _isbanner
          ? Container(
              height: _bannerAd.size.height.toDouble(),
              width: _bannerAd.size.width.toDouble(),
              child: AdWidget(ad: _bannerAd),
            )
          : SizedBox(),
    );
  }
}

class Laliga extends StatefulWidget {
  const Laliga({super.key});

  @override
  State<Laliga> createState() => _LaligaState();
}

class _LaligaState extends State<Laliga> {
  late WebViewController _webViewController;
  late BannerAd _bannerAd;
  bool _isbanner = false;

  @override
  void initState() {
    super.initState();
    _initbannerad();
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
      body: WillPopScope(
        onWillPop: () async {
          if (await _webViewController.canGoBack()) {
            _webViewController.goBack();
            return false;
          } else {
            return true;
          }
        },
        child: WebView(
          initialUrl:
              'https://reddit1.soccerstreamlinks.com/sports/football/0/laliga',
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController controller) {
            _webViewController = controller;
          },
        ),
      ),
      bottomNavigationBar: _isbanner
          ? Container(
              height: _bannerAd.size.height.toDouble(),
              width: _bannerAd.size.width.toDouble(),
              child: AdWidget(ad: _bannerAd),
            )
          : SizedBox(),
    );
  }
}

class Seriea extends StatefulWidget {
  const Seriea({super.key});

  @override
  State<Seriea> createState() => _SerieaState();
}

class _SerieaState extends State<Seriea> {
  late WebViewController _webViewController;
  late BannerAd _bannerAd;
  bool _isbanner = false;

  @override
  void initState() {
    super.initState();
    _initbannerad();
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
      body: WillPopScope(
        onWillPop: () async {
          if (await _webViewController.canGoBack()) {
            _webViewController.goBack();
            return false;
          } else {
            return true;
          }
        },
        child: WebView(
          initialUrl:
              'https://reddit1.soccerstreamlinks.com/sports/football/0/serie-a',
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController controller) {
            _webViewController = controller;
          },
        ),
      ),
      bottomNavigationBar: _isbanner
          ? Container(
              height: _bannerAd.size.height.toDouble(),
              width: _bannerAd.size.width.toDouble(),
              child: AdWidget(ad: _bannerAd),
            )
          : SizedBox(),
    );
  }
}

class Ligue1 extends StatefulWidget {
  const Ligue1({super.key});

  @override
  State<Ligue1> createState() => _Ligue1State();
}

class _Ligue1State extends State<Ligue1> {
  late WebViewController _webViewController;
  late BannerAd _bannerAd;
  bool _isbanner = false;

  @override
  void initState() {
    super.initState();
    _initbannerad();
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
      body: WillPopScope(
        onWillPop: () async {
          if (await _webViewController.canGoBack()) {
            _webViewController.goBack();
            return false;
          } else {
            return true;
          }
        },
        child: WebView(
          initialUrl:
              'https://reddit1.soccerstreamlinks.com/sports/football/0/ligue-1',
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController controller) {
            _webViewController = controller;
          },
        ),
      ),
      bottomNavigationBar: _isbanner
          ? Container(
              height: _bannerAd.size.height.toDouble(),
              width: _bannerAd.size.width.toDouble(),
              child: AdWidget(ad: _bannerAd),
            )
          : SizedBox(),
    );
  }
}

class Bundesliga extends StatefulWidget {
  const Bundesliga({super.key});

  @override
  State<Bundesliga> createState() => _BundesligaState();
}

class _BundesligaState extends State<Bundesliga> {
  late WebViewController _webViewController;
  late BannerAd _bannerAd;
  bool _isbanner = false;

  @override
  void initState() {
    super.initState();
    _initbannerad();
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
      body: WillPopScope(
        onWillPop: () async {
          if (await _webViewController.canGoBack()) {
            _webViewController.goBack();
            return false;
          } else {
            return true;
          }
        },
        child: WebView(
          initialUrl:
              'https://reddit1.soccerstreamlinks.com/sports/football/0/bundesliga',
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController controller) {
            _webViewController = controller;
          },
        ),
      ),
      bottomNavigationBar: _isbanner
          ? Container(
              height: _bannerAd.size.height.toDouble(),
              width: _bannerAd.size.width.toDouble(),
              child: AdWidget(ad: _bannerAd),
            )
          : SizedBox(),
    );
  }
}

class Championship extends StatefulWidget {
  const Championship({super.key});

  @override
  State<Championship> createState() => _ChampionshipState();
}

class _ChampionshipState extends State<Championship> {
  late WebViewController _webViewController;
  late BannerAd _bannerAd;
  bool _isbanner = false;

  @override
  void initState() {
    super.initState();
    _initbannerad();
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
      body: WillPopScope(
        onWillPop: () async {
          if (await _webViewController.canGoBack()) {
            _webViewController.goBack();
            return false;
          } else {
            return true;
          }
        },
        child: WebView(
          initialUrl:
              'https://reddit1.soccerstreamlinks.com/sports/football/0/championship',
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController controller) {
            _webViewController = controller;
          },
        ),
      ),
      bottomNavigationBar: _isbanner
          ? Container(
              height: _bannerAd.size.height.toDouble(),
              width: _bannerAd.size.width.toDouble(),
              child: AdWidget(ad: _bannerAd),
            )
          : SizedBox(),
    );
  }
}

class Uefa extends StatefulWidget {
  const Uefa({super.key});

  @override
  State<Uefa> createState() => _UefaState();
}

class _UefaState extends State<Uefa> {
  late WebViewController _webViewController;
  late BannerAd _bannerAd;
  bool _isbanner = false;

  @override
  void initState() {
    super.initState();
    _initbannerad();
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
      body: WillPopScope(
        onWillPop: () async {
          if (await _webViewController.canGoBack()) {
            _webViewController.goBack();
            return false;
          } else {
            return true;
          }
        },
        child: WebView(
          initialUrl:
              'https://reddit4.soccerstreams.net/league/champions-league-live-stream/1',
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController controller) {
            _webViewController = controller;
          },
        ),
      ),
      bottomNavigationBar: _isbanner
          ? Container(
              height: _bannerAd.size.height.toDouble(),
              width: _bannerAd.size.width.toDouble(),
              child: AdWidget(ad: _bannerAd),
            )
          : SizedBox(),
    );
  }
}

class News extends StatefulWidget {
  const News({super.key});

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
  late WebViewController _webViewController;
  late BannerAd _bannerAd;
  bool _isbanner = false;

  @override
  void initState() {
    super.initState();
    _initbannerad();
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
      body: WillPopScope(
        onWillPop: () async {
          if (await _webViewController.canGoBack()) {
            _webViewController.goBack();
            return false;
          } else {
            return true;
          }
        },
        child: WebView(
          initialUrl: 'https://www.goal.com/en',
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController controller) {
            _webViewController = controller;
          },
        ),
      ),
      bottomNavigationBar: _isbanner
          ? Container(
              height: _bannerAd.size.height.toDouble(),
              width: _bannerAd.size.width.toDouble(),
              child: AdWidget(ad: _bannerAd),
            )
          : SizedBox(),
    );
  }
}

class Qatar extends StatefulWidget {
  const Qatar({super.key});

  @override
  State<Qatar> createState() => _QatarState();
}

class _QatarState extends State<Qatar> {
  late WebViewController _webViewController;
  late BannerAd _bannerAd;
  bool _isbanner = false;

  @override
  void initState() {
    super.initState();
    _initbannerad();
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
      body: WillPopScope(
        onWillPop: () async {
          if (await _webViewController.canGoBack()) {
            _webViewController.goBack();
            return false;
          } else {
            return true;
          }
        },
        child: WebView(
          initialUrl:
              'https://www.google.com/search?q=+world+cup+table+2022&rlz=1C1CHBF_enNG1013NG1013&sxsrf=ALiCzsZ1M5EzvA_kqdoofktEEA_CBHw_ww%3A1666238944139&ei=4MlQY6qVCOuD9u8PjeWk4AQ&ved=0ahUKEwiqhYHj9-36AhXrgf0HHY0yCUwQ4dUDCA8&uact=5&oq=+world+cup+table+2022&gs_lcp=Cgdnd3Mtd2l6EAMyBAgAEEMyBggAEAcQHjIGCAAQBxAeMgYIABAHEB4yBggAEAcQHjIGCAAQBxAeMgYIABAHEB4yBggAEAcQHjIGCAAQBxAeMgYIABAHEB46CggAEEcQ1gQQsAM6BwgjELACECc6CAgAEAgQBxAeSgQITRgBSgQIQRgASgQIRhgAUJAGWJ8MYNkSaAFwAXgBgAGlAogB5AmSAQMyLTWYAQCgAQHIAQjAAQE&sclient=gws-wiz#sie=lg;/m/0fp_8fm;2;/m/030q7;st;fp;1;;;',
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController controller) {
            _webViewController = controller;
          },
        ),
      ),
      bottomNavigationBar: _isbanner
          ? Container(
              height: _bannerAd.size.height.toDouble(),
              width: _bannerAd.size.width.toDouble(),
              child: AdWidget(ad: _bannerAd),
            )
          : SizedBox(),
    );
  }
}
