import 'package:adivery/adivery.dart';
import 'package:adivery/adivery_ads.dart';
import 'package:flutter/material.dart';

class Light extends StatefulWidget {
  const Light({super.key});

  @override
  State<Light> createState() => _LightState();
}

class _LightState extends State<Light> {
  @override
  void initState() {
    super.initState();
    AdiveryPlugin.initialize('14e0507e-394a-442a-8c7a-01e254fdf3e8');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Stack(
        children: [
          Scaffold(
            appBar: AppBar(
              title: const Align(
                  child: Text(
                'تأمین نور گیاهان آپارتمانی و 3 پارامتر اصلی آن',
                style: TextStyle(fontFamily: 'aseman', fontSize: 30),
              )),
              backgroundColor: const Color.fromARGB(255, 0, 149, 109),
            ),
            body: ListView(
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
                Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 229, 255, 248),
                        border: Border.all(
                            color: const Color.fromARGB(255, 0, 149, 109), width: 3),
                        borderRadius: BorderRadius.circular(30)),
                    child: Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Center(
                        child: Column(
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child:
                                    Image.asset('lib/image/light/light1.jpg')),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
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
                            const Text(
                              'گیاه سانسوریا همیشه سبز می باشد و در محیط های کسب و کار نیز می توان از آن نگهداری نمود زیرا در برابر سایه و خشکی مقاوم است و و نور کافی برای سانسوریا مقدار نور زیادی نمی باید. به همین دلیل می توانید در آرایشگاه ها و مغازه ها و همچنین اداره ها از آن استفاده کنید و اکسیژن این محیط ها را با استفاده از گیاهان به خصوص سانسوریا تامین نمایید. زیرا در محیط های کاری که انرژی و تشعشات منفی زیاد است وجود گیاهان می تواند خیلی تاثیر گذار باشد البته که در نظر داشتن نور کافی برای سانسوریا حائز اهمیت فراوان است.',
                              textDirection: TextDirection.rtl,
                              style:
                                  TextStyle(fontFamily: 'aseman', fontSize: 25),
                            ),
                            const Text(
                              'سانسوریا یک گیاه کم نور می باشد یعنی نیاز کمتری به نور دارد و احتیاج به نور مستقیم ندارد و نور غیر مستقیم برای آن کافی است. نور غیر مستقیم یعنی نوری که پشت پنجره یا توسط لامپ ها مانند لامپ فلورسنت یا لامپ رشد گیاه تامین شود.',
                              textDirection: TextDirection.rtl,
                              style:
                                  TextStyle(fontFamily: 'aseman', fontSize: 25),
                            ),
                            ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child:
                                    Image.asset('lib/image/snsvria/shot2.jpg')),
                            Padding(
                              padding: const EdgeInsets.all(8),
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
                            const Text(
                              'به همین دلیل بهتر است سانسوریا را پشت پنجره جنوبی قرار دهید زیرا سانسوریا در تمام روز می تواند از پشت پنجره نور دریافت کند.زیرا نور باعث می شود اگر گیاه آب زیادی دریافت کند این آب تبخیر شود و به ریشه گیاه آسیب وارد نشود. اما لازم به ذکر است در روز های تابستانی که خورشید مستقیم می تابد بهتر است نصف روز پشت پنجره باشد زیرا نور زیاد منجر به خشک شدن نوک برگ های سانسوریا می شود.',
                              textDirection: TextDirection.rtl,
                              style:
                                  TextStyle(fontFamily: 'aseman', fontSize: 25),
                            ),
                            const Text(
                              'بهتر است بدانید در صورت دریافت بیش از اندازه نور توسط سانسوریا این گیاه به مرور خشک خواهد شد. نور بیش از اندازه به این معناست که سانسوریا را در مقابل نور مستقیم خورشید قرار دهید در این صورت سانسوریا از بالای برگ ها شروع به زرد شدن و خشک شدن می کند.',
                              textDirection: TextDirection.rtl,
                              style:
                                  TextStyle(fontFamily: 'aseman', fontSize: 25),
                            ),
                            const Text(
                              'بنابراین تابش نور مستقیم خورشید سبب بالا رفتن دمای محیط می شود و آب دریافتی سانسوریا را تبخیر می کند بدین ترتیب سانسوریا شروع به خشک شدن می کند و از بین می رود. برای جلوگیری از نابود نشدن سانسوریا باید شرایط نور کافی برای سانسوریا فراهم شود.',
                              textDirection: TextDirection.rtl,
                              style:
                                  TextStyle(fontFamily: 'aseman', fontSize: 25),
                            ),
                            ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child:
                                    Image.asset('lib/image/snsvria/shot3.jpg')),
                            Padding(
                              padding: const EdgeInsets.all(8),
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
                            const Text(
                              'جالب است بدانید سانسوریا در هر شرایط نوری خودش را وقف می دهد به همین دلیل است که گیاه مناسبی برای آپارتمان ها می باشد. اما بهترین شرایط برای رشد بهتر سانسوریا قرار گرفتن این گیاه در پشت پنجره در تمام روز می باشد. پس نور کافی برای سانسوریا به این شکل است این گونه سانسوریا بهتر رشد می کند و تمام نور مورد نیاز خود را دریافت می کند. با اینکه گیاه کم نوری است اما این شرایط  نوری کاملا ایده آل برای سانسوریا می باشد.',
                              textDirection: TextDirection.rtl,
                              style:
                                  TextStyle(fontFamily: 'aseman', fontSize: 25),
                            ),
                            const Text(
                              'در انتها بهتر است نتیجه بگیریم سانسوریا با مقاومتی که دارد سعی می کند در شرایط دیگری زنده بماند اما بهترین شرایط برای سانسوریا آب دهی در صورت خشک شدن خاک و قرار دادن سانسوریا در نور غیر مستقیم یا به اصطلاح پشت پنجره ای اینگونه می توانید از گیاه سانسوریا مراقبت کنید و نگهداری کیند. و همچینین نور کافی برای سانسوریا را مهیا سازید.',
                              textDirection: TextDirection.rtl,
                              style:
                                  TextStyle(fontFamily: 'aseman', fontSize: 25),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 30),
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
                            const Text(
                              '',
                              textAlign: TextAlign.center,
                              textDirection: TextDirection.rtl,
                              style:
                                  TextStyle(fontFamily: 'aseman', fontSize: 25),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: FloatingActionButton.extended(
                  backgroundColor: const Color.fromARGB(255, 0, 149, 109),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  label: const Align(
                    alignment: Alignment.bottomCenter,
                    child: Center(
                        child: Text(
                      'بـــازگــشت',
                      style: TextStyle(
                          fontFamily: 'aseman',
                          fontSize: 30,
                          color: Colors.black),
                    )),
                  )),
            ),
          )
        ],
      ),
    );
  }
}