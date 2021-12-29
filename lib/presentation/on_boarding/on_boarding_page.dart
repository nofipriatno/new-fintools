import 'package:carousel_slider/carousel_slider.dart';
import 'package:fintools/domain/core/constant/app_asset.dart';
import 'package:fintools/domain/core/constant/app_color.dart';
import 'package:fintools/domain/core/constant/app_font.dart';
import 'package:flutter/material.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  CarouselController controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 27),
                  child: Image.asset(AppAssets.imagesLogo),
                ),
                _imageSlider(),
                _titleAndDescription(),
                SizedBox(
                  width: 200,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: AppColor.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text('Masuk'),
                  ),
                ),
                Container(
                  height: 60,
                  color: AppColor.gold,
                  width: double.infinity,
                )
              ],
            ),
            Positioned(
              top: 10,
              right: 10,
              child: IconButton(
                icon: const Icon(Icons.settings),
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _titleAndDescription() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 65, vertical: 27),
      child: Column(
        children: [
          Text(
            'I-Prove',
            style: AppFont.text18Bold.copyWith(color: AppColor.blue),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
              textAlign: TextAlign.center,
              style: AppFont.text10Normal.copyWith(color: AppColor.gold),
            ),
          )
        ],
      ),
    );
  }

  Widget _imageSlider() {
    return CarouselSlider(
      items: [
        _carouselItem(AppAssets.imagesOnBoarding1),
        _carouselItem(AppAssets.imagesOnBoarding2),
        _carouselItem(AppAssets.imagesOnBoarding3),
      ],
      options: CarouselOptions(
        onPageChanged: (index, _) => print('print => $index'),
        viewportFraction: 0.6,
        initialPage: 0,
        enableInfiniteScroll: true,
        enlargeCenterPage: true,
        scrollDirection: Axis.horizontal,
      ),
    );
  }

  Widget _carouselItem(String asset) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: AppColor.blue),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Image.asset(asset),
      ),
    );
  }
}
