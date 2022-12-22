import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdHelper {
  final AdSize adSize = const AdSize(height: 90, width: 350);
  static BannerAd myBanner = BannerAd(
    adUnitId: 'ca-app-pub-4958281287686363/3401835915',
    size: const AdSize(width: 320, height: 90),
    request: const AdRequest(),
    listener: const BannerAdListener(),
  );
}
  //ca-app-pub-4958281287686363/3401835915