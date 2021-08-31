import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../core/core.dart';
import '../../../style/style.dart';

class WelcomeCarousel extends StatefulWidget {
  const WelcomeCarousel({Key? key}) : super(key: key);

  @override
  _WelcomeCarouselState createState() => _WelcomeCarouselState();
}

class _WelcomeCarouselState extends State<WelcomeCarousel> {
  final _welcomeStrings = [
    'a friendsBee é sua aliada no bem-estare dispõe de ferramentas desenvolvidas especialmente para lhe ajudar a se sentir cada vez melhor!',
    'aqui você dispõe de ferramentas voltadas para o auto-conhecimento que auxiliam você a entender e a lidar com as suas emoções',
    'desfrute de um espaço seguro para ser quem você é sem medo ou ressalvas. sua identidade está segura conosco e não a revelamos para ninguém',
  ];

  final _welcomeAssets = [
    'assets/welcome1.png',
    'assets/welcome2.png',
    'assets/welcome3.png',
  ];

  int _carouselIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            _carouselIndex == 0 ? Strings.welcome : '',
            style: smallTitleBold.copyWith(
              color: primaryMain,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            _welcomeStrings[_carouselIndex],
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: bodyRegular.copyWith(
              color: neutralTextLight,
            ),
          ),
          CarouselSlider(
            options: CarouselOptions(
              height: 340,
              viewportFraction: 1,
              autoPlay: true,
              onPageChanged: (index, _) {
                setState(() => _carouselIndex = index);
              },
            ),
            items: _welcomeAssets
                .map(
                  (asset) => Image.asset(asset),
                )
                .toList(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: _welcomeAssets
                .asMap()
                .entries
                .map(
                  (entry) => Container(
                    width: 12.0,
                    height: 12.0,
                    margin: const EdgeInsets.symmetric(
                      vertical: 8.0,
                      horizontal: 4.0,
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _carouselIndex == entry.key
                          ? accentMain
                          : neutralTextLight,
                    ),
                  ),
                )
                .toList(),
          )
        ],
      ),
    );
  }
}
