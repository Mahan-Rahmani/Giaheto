import 'package:adivery/adivery.dart';
import 'package:flutter/material.dart';
import 'package:adivery/adivery_ads.dart';
import 'package:giaheto/plants/aglonema/aglonema.dart';
import 'package:giaheto/plants/difenbakhia/difen.dart';
import 'package:giaheto/plants/ficus/ficus.dart';
import 'package:giaheto/plants/sansveria/sansveria.dart';

class Plant {
  final String name;
  final String imagePath;
  final Widget Function() buildPage;

  Plant({
    required this.name,
    required this.imagePath,
    required this.buildPage,
  });
}

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  late final List<Plant> plants;
  List<Plant> searchResults = [];
  final TextEditingController searchController = TextEditingController();
  final FocusNode searchFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    AdiveryPlugin.initialize('14e0507e-394a-442a-8c7a-01e254fdf3e8');
    searchFocusNode.unfocus(); // جلوگیری از فوکوس خودکار
    plants = [
      Plant(
        name: 'آگلونما',
        imagePath: 'lib/image/Aglaonema.png',
        buildPage: () => const Aglonema(key: ValueKey('aglonema')),
      ),
      Plant(
        name: 'دیفن باخیا',
        imagePath: 'lib/image/dfnbkhia.png',
        buildPage: () => const Difen(key: ValueKey('difen')),
      ),
      Plant(
        name: 'فیکوس',
        imagePath: 'lib/image/ficus.png',
        buildPage: () => const Ficus(key: ValueKey('ficus')),
      ),
      Plant(
        name: 'سانســـوریا',
        imagePath: 'lib/image/snsvria.png',
        buildPage: () => const Sansveria(key: ValueKey('sansveria')),
      ),
      // موارد آزمایشی موقت با تصویر تکراری
      Plant(
        name: 'سینگونیوم',
        imagePath: 'lib/image/Aglaonema.png',
        buildPage: () => const Sansveria(key: ValueKey('syngonium')),
      ),
      Plant(
        name: 'برگ انجیری',
        imagePath: 'lib/image/Aglaonema.png',
        buildPage: () => const Sansveria(key: ValueKey('monstera')),
      ),
      Plant(
        name: 'پیتوس',
        imagePath: 'lib/image/Aglaonema.png',
        buildPage: () => const Sansveria(key: ValueKey('pothos')),
      ),
    ];

    plants.sort((a, b) => a.name.compareTo(b.name));
    searchResults = List.from(plants);
  }

  void performSearch(String query) {
    final lower = query.toLowerCase();
    setState(() {
      searchResults = lower.isEmpty
          ? List.from(plants)
          : plants.where((plant) => plant.name.toLowerCase().contains(lower)).toList();
    });
  }

  Widget buildPlantCard(Plant plant) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextButton(
        onPressed: () {
          FocusScope.of(context).unfocus(); // بستن کیبورد قبل از رفتن
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => plant.buildPage()),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Image.asset(
                plant.imagePath,
                width: 150,
                height: 150,
                errorBuilder: (_, __, ___) =>
                    const Icon(Icons.broken_image, size: 100, color: Colors.grey),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  plant.name,
                  style: const TextStyle(
                    fontSize: 25,
                    color: Color.fromARGB(255, 0, 0, 0),
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

  Widget buildAdBanner() {
    return SafeArea(
      child: BannerAd(
        'c13cd83d-f817-44b1-9fc5-1eb7440e7d46',
        BannerAdSize.BANNER,
        onAdLoaded: (_) {},
        onAdClicked: (_) {},
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
            buildAdBanner(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                margin: const EdgeInsets.all(16),
                child: TextField(
                  controller: searchController,
                  focusNode: searchFocusNode,
                  onChanged: performSearch,
                  decoration: InputDecoration(
                    label: const Text('... گــیاهـتو پیــدا کن'),
                    floatingLabelAlignment: FloatingLabelAlignment.center,
                    labelStyle: const TextStyle(fontFamily: 'aseman', fontSize: 20),
                    hintText: 'جــستــجو',
                    hintStyle: const TextStyle(fontFamily: 'aseman', fontSize: 20),
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                    enabledBorder:
                        OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Wrap(
                children: searchResults.map(buildPlantCard).toList(),
              ),
            ),
            buildAdBanner(),
          ],
        ),
      ),
    );
  }
}