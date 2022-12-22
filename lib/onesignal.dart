import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class WebEpl extends StatefulWidget {
  const WebEpl({super.key});

  @override
  State<WebEpl> createState() => _WebEplState();
}

class _WebEplState extends State<WebEpl> {
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
      adUnitId: "",
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
