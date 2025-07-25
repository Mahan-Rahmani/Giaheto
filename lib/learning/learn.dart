import 'package:adivery/adivery.dart';
import 'package:flutter/material.dart';
import 'package:adivery/adivery_ads.dart';
import 'package:giaheto/plants/aglonema/aglonema.dart';
import 'package:giaheto/plants/difenbakhia/difen.dart';
import 'package:giaheto/plants/ficus/ficus.dart';
import 'package:giaheto/plants/sansveria/sansveria.dart';
import 'package:giaheto/learning/light/light.dart';

class Plant {
  final String name;
  final String imagePath;
  final Widget page; // اضافه کردن فیلد جدید برای نگهداری صفحه مربوط به هر گیاه

  Plant({required this.name, required this.imagePath, required this.page});
}

class Learn extends StatefulWidget {
  const Learn({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _LearnState createState() => _LearnState();
}

class _LearnState extends State<Learn> {
  final List<Plant> plants = [
    Plant(
      name: 'تأمین نور گیاهان آپارتمانی و 3 پارامتر اصلی آن',
      imagePath: 'lib/image/light/light1.jpg',
      page: const Light(
        key: null,
      ),
    ),
    Plant(
      name: 'دیفن باخیا',
      imagePath: 'lib/image/dfnbkhia.png',
      page: const Difen(
        key: null,
      ),
    ),
    Plant(
      name: 'فیکوس',
      imagePath: 'lib/image/ficus.png',
      page: const Ficus(
        key: null,
      ),
    ),
    Plant(
      name: 'آگلونما',
      imagePath: 'lib/image/Aglaonema.png',
      page: const Aglonema(
        key: null,
      ),
    ),
    Plant(
      name: 'آگلونما',
      imagePath: 'lib/image/Aglaonema.png',
      page: const Sansveria(
        key: null,
      ),
    ),
    Plant(
      name: 'آگلونما',
      imagePath: 'lib/image/Aglaonema.png',
      page: const Sansveria(
        key: null,
      ),
    ),
    Plant(
      name: 'آگلونما',
      imagePath: 'lib/image/Aglaonema.png',
      page: const Sansveria(
        key: null,
      ),
    ),

    // اضافه کردن سایر گیاهان به این لیست
  ];

  @override
  void initState() {
    super.initState();
    AdiveryPlugin.initialize('14e0507e-394a-442a-8c7a-01e254fdf3e8');
  }

  Widget buildPlantCard(Plant plant) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => plant.page),
          );
        },
        child: Container(
          decoration: BoxDecoration(
              color: Colors.amber, borderRadius: BorderRadius.circular(30)),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(plant.imagePath, width: 300),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    plant.name,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontSize: 23,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.w900,
                        fontFamily: 'aseman',
                        ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            SafeArea(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: BannerAd(
                  'c13cd83d-f817-44b1-9fc5-1eb7440e7d46',
                  BannerAdSize.BANNER,
                  onAdLoaded: (ad) {},
                  onAdClicked: (ad) {},
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Wrap(
                children: plants.map((plant) => buildPlantCard(plant)).toList(),
              ),
            ),
            SafeArea(
              child: Align(
                alignment: Alignment.topCenter,
                child: BannerAd(
                  'c13cd83d-f817-44b1-9fc5-1eb7440e7d46',
                  BannerAdSize.BANNER,
                  onAdLoaded: (ad) {},
                  onAdClicked: (ad) {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
