import 'package:adivery/adivery_ads.dart';
import 'package:flutter/material.dart';
import 'package:giaheto/plants/sansveria/sun/sun.dart';
import 'package:giaheto/plants/sansveria/drop/drop.dart';
import 'package:giaheto/plants/sansveria/soil/soil.dart';
import 'package:giaheto/plants/sansveria/info/info.dart';
import 'package:giaheto/plants/sansveria/camera/camera.dart';
import 'package:giaheto/plants/sansveria/shop/shop.dart';

class Sansveria extends StatelessWidget {
  const Sansveria({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 149, 109),
        title: const Align(
          alignment: Alignment.topCenter,
          child: Text(
            'سـانســوریا',
            style: TextStyle(fontFamily: 'aseman', fontSize: 30),
          ),
        ),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          buildBannerAd(),
          const SizedBox(height: 10),
          Align(
            alignment: Alignment.topCenter,
            child: Wrap(
              alignment: WrapAlignment.center,
              children: buildFeatureButtons(context),
            ),
          ),
          const SizedBox(height: 10),
          buildBannerAd(),
        ],
      ),
    );
  }

  Widget buildBannerAd() {
    return Align(
      alignment: Alignment.center,
      child: BannerAd(
        'c13cd83d-f817-44b1-9fc5-1eb7440e7d46',
        BannerAdSize.BANNER,
        onAdLoaded: (ad) {},
        onAdClicked: (ad) {},
      ),
    );
  }

  List<Widget> buildFeatureButtons(BuildContext context) {
    return [
      SansveriaFeatureButton(
        imagePath: 'lib/image/sun.png',
        text: 'نــور دهـــی',
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const SnsvriaSun()),
        ),
      ),
      SansveriaFeatureButton(
        imagePath: 'lib/image/drop.png',
        text: 'آبــــیاری',
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const SnsvriaDrop()),
        ),
      ),
      SansveriaFeatureButton(
        imagePath: 'lib/image/soil.png',
        text: 'خـــاک و کــود',
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const SnsvriaSoil()),
        ),
      ),
      SansveriaFeatureButton(
        imagePath: 'lib/image/camera.png',
        text: 'مشـــخصـات',
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const SnsvriaContent()),
        ),
      ),
      SansveriaFeatureButton(
        imagePath: 'lib/image/content.png',
        text: 'گالـــری تــصاویر',
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const SnsvriaCamera()),
          );
          showGalleryAlertDialog(context);
        },
      ),
      SansveriaFeatureButton(
        imagePath: 'lib/image/shop.png',
        text: 'خــــــریــد',
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const SnsvriaSupport()),
          );
          showShopAlertDialog2(context);
        },
      ),
    ];
  }
}

// 📦 ویجت مستقل برای دکمه‌ها
class SansveriaFeatureButton extends StatelessWidget {
  final String imagePath;
  final String text;
  final VoidCallback onPressed;

  const SansveriaFeatureButton({
    required this.imagePath,
    required this.text,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextButton(
        onPressed: onPressed,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Image.asset(imagePath, width: 150, height: 150),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Text(
                  text,
                  style: const TextStyle(
                    fontSize: 22,
                    color: Color(0xFF000000),
                    fontWeight: FontWeight.w900,
                    fontFamily: 'aseman',
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

// 💬 دیالوگ‌ها مثل قبل
void showGalleryAlertDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (_) => const GalleryAlert(),
  );
}

void showShopAlertDialog2(BuildContext context) {
  showDialog(
    context: context,
    builder: (_) => const ShopAlert(),
  );
}

// ماکت ساده از دیالوگ‌ها، می‌تونی این‌ها رو به فایل‌های مستقل منتقل کنی
class ShopAlert extends StatelessWidget {
  const ShopAlert({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      icon: const Icon(Icons.notifications_none_rounded, size: 60),
      title: const Text('گــیاهــتو',
          style: TextStyle(fontSize: 35, fontFamily: 'aseman')),
      content: const Text(
        'توجه 1 :\n برای دسترسی به فروشگاه به اینترنت نیاز دارید\n'
        'توجه 2 :\n اگر به اینترنت متصل هستید ، تا بارگزاری صفحه کمی صبر کنید',
        textAlign: TextAlign.center,
        textDirection: TextDirection.rtl,
        style: TextStyle(
          fontSize: 24,
          fontFamily: 'aseman',
          color: Color.fromARGB(255, 0, 149, 109),
        ),
      ),
      actions: [
        ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            shape: const StadiumBorder(),
            backgroundColor: Color.fromARGB(255, 0, 149, 109),
          ),
          icon: const Icon(Icons.thumb_up_alt, color: Colors.white),
          label: const Text('باشه',
              style: TextStyle(fontSize: 20, fontFamily: 'aseman')),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ],
    );
  }
}

class GalleryAlert extends StatelessWidget {
  const GalleryAlert({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      icon: const Icon(Icons.notifications_none_rounded, size: 60),
      title: const Text('گــیاهــتو',
          style: TextStyle(fontSize: 35, fontFamily: 'aseman')),
      content: const Text(
        'توجه :\n برای دانلــود تــصاویر به اینترنت نیاز دارید',
        textAlign: TextAlign.center,
        textDirection: TextDirection.rtl,
        style: TextStyle(
          fontSize: 24,
          fontFamily: 'aseman',
          color: Color.fromARGB(255, 0, 149, 109),
        ),
      ),
      actions: [
        ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            shape: const StadiumBorder(),
            backgroundColor: Color.fromARGB(255, 0, 149, 109),
          ),
          icon: const Icon(Icons.thumb_up_alt, color: Colors.white),
          label: const Text('باشه',
              style: TextStyle(fontSize: 20, fontFamily: 'aseman')),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ],
    );
  }
}