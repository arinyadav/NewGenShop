import 'package:flutter/material.dart';

String uri = 'http://192.168.100.239:5000';

class GlobalVariables {
  // COLORS
static const appBarGradient = LinearGradient(
  colors: [
    Color.fromARGB(255, 112, 173, 71),
    Color.fromARGB(255, 217, 228, 148),
  ],
  stops: [0.5, 1.0],
);

static const secondaryColor = Color.fromRGBO(250, 132, 27, 1);
static const backgroundColor = Color.fromRGBO(245, 245, 245, 1);
static const Color greyBackgroundCOlor = Color.fromRGBO(220, 220, 220, 1);
static var selectedNavBarColor = Color.fromRGBO(112, 173, 71, 1);
static const unselectedNavBarColor = Colors.black87;


  // STATIC IMAGES
  static const List<String> carouselImages = [
    'https://images-eu.ssl-images-amazon.com/images/G/31/img21/Wireless/WLA/TS/D37847648_Accessories_savingdays_Jan22_Cat_PC_1500.jpg',
    'https://images-eu.ssl-images-amazon.com/images/G/31/img2021/Vday/bwl/English.jpg',
    'https://images-eu.ssl-images-amazon.com/images/G/31/img22/Wireless/AdvantagePrime/BAU/14thJan/D37196025_IN_WL_AdvantageJustforPrime_Jan_Mob_ingress-banner_1242x450.jpg',
    'https://images-na.ssl-images-amazon.com/images/G/31/Symbol/2020/00NEW/1242_450Banners/PL31_copy._CB432483346_.jpg',
    'https://images-na.ssl-images-amazon.com/images/G/31/img21/shoes/September/SSW/pc-header._CB641971330_.jpg',
  ];

  static const List<Map<String, String>> categoryImages = [
    {
      'title': 'Mobiles',
      'image': 'assests/images/mobiles.jpeg',
    },
    {
      'title': 'Essentials',
      'image': 'assests/images/essentials.jpeg',
    },
    {
      'title': 'Appliances',
      'image': 'assests/images/appliances.jpeg',
    },
    {
      'title': 'Books',
      'image': 'assests/images/books.jpeg',
    },
    {
      'title': 'Fashion',
      'image': 'assests/images/fashion.jpeg',
    },
  ];
}
