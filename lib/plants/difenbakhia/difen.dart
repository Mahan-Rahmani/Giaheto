import 'package:adivery/adivery_ads.dart';
import 'package:flutter/material.dart';
import 'package:giaheto/plants/difenbakhia/camera/camera.dart';
import 'package:giaheto/plants/difenbakhia/drop/drop.dart';
import 'package:giaheto/plants/difenbakhia/info/info.dart';
import 'package:giaheto/plants/difenbakhia/shop/shop.dart';
import 'package:giaheto/plants/difenbakhia/soil/soil.dart';
import 'package:giaheto/plants/difenbakhia/sun/sun.dart';

class Difen extends StatelessWidget {
  const Difen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 149, 109),
        title: const Align(
          alignment: Alignment.center,
          child: Text(
            'دیــفن بــاخیــا',
            style: TextStyle(fontFamily: 'aseman', fontSize: 30),
          ),
        ),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          _buildBannerAd(),
          const SizedBox(height: 10),
          Align(
            alignment: Alignment.center,
            child: Wrap(
              alignment: WrapAlignment.center,
              children: _buildFeatureButtons(context),
            ),
          ),
          const SizedBox(height: 10),
          _buildBannerAd(),
        ],
      ),
    );
  }

  Widget _buildBannerAd() {
    return BannerAd(
      'c13cd83d-f817-44b1-9fc5-1eb7440e7d46',
      BannerAdSize.BANNER,
      onAdLoaded: (ad) {},
      onAdClicked: (ad) {},
    );
  }

  List<Widget> _buildFeatureButtons(BuildContext context) {
    return [
      _DifenFeatureButton(
        imagePath: 'lib/image/sun.png',
        label: 'نــور دهـــی',
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const DifenSun()),
        ),
      ),
      _DifenFeatureButton(
        imagePath: 'lib/image/drop.png',
        label: 'آبــــیاری',
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const DifenDrop()),
        ),
      ),
      _DifenFeatureButton(
        imagePath: 'lib/image/soil.png',
        label: 'خـــاک و کــود',
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const DifenSoil()),
        ),
      ),
      _DifenFeatureButton(
        imagePath: 'lib/image/content.png',
        label: 'مشـــخصات',
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const DifenInfo()),
        ),
      ),
      _DifenFeatureButton(
        imagePath: 'lib/image/camera.png',
        label: 'گالـــری تــصاویر',
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const DifenCam()),
        ),
      ),
      _DifenFeatureButton(
        imagePath: 'lib/image/shop.png',
        label: 'خــــــریــد',
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const DifenShop()),
          );
          showShopAlertDialog2(context);
        },
      ),
    ];
  }
}

class _DifenFeatureButton extends StatelessWidget {
  final String imagePath;
  final String label;
  final VoidCallback onPressed;

  const _DifenFeatureButton({
    required this.imagePath,
    required this.label,
    required this.onPressed,
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
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  label,
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

// 💬 دیالوگ فروشگاه
void showShopAlertDialog2(BuildContext context) {
  showDialog(
    context: context,
    builder: (_) => const _DifenShopAlert(),
  );
}

class _DifenShopAlert extends StatelessWidget {
  const _DifenShopAlert({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      icon: const Icon(Icons.notifications_none_rounded, size: 60),
      title: const Text('گــیاهــتو',
          style: TextStyle(fontSize: 35, fontFamily: 'aseman')),
      content: const Text(
        'توجه 1:\n برای دسترسی به فروشگاه به اینترنت نیاز دارید\n'
        'توجه 2:\n اگر به اینترنت متصل هستید، تا بارگزاری صفحه کمی صبر کنید',
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
            backgroundColor: const Color.fromARGB(255, 0, 149, 109),
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