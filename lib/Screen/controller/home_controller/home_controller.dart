import 'package:get/get.dart';

class HomeController extends GetxController {
  final travelImage = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTD_kCrE0JwBLF54gd_-ooF8kM-Gk-nZrKIOw&usqp=CAU',
    'https://images.unsplash.com/photo-1503220317375-aaad61436b1b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fHRyYXZlbHxlbnwwfHwwfHw%3D&w=1000&q=80',
    'https://images.unsplash.com/photo-1433838552652-f9a46b332c40?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8NHx8fGVufDB8fHx8&w=1000&q=80',
    'https://static.toiimg.com/photo/76420840.cms',
    'https://www.travelandleisure.com/thmb/iAIrOVW7yWrDG8pZBpKMOvEGuNQ=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/new-delhi-india-NEWDELHITG0721-60d592e1603349298a0206d67d08582b.jpg',
  ];

  final gridtravelImage = [
    'https://i.pinimg.com/736x/57/d9/12/57d912449af2ec54bb79f46780854abb.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAD-X7-hE6cdhEjZIHZB70BucqDy-T3y5CPtcZoXkaFhfJ65dBVRnKoFZIqCfYI2OxkHs&usqp=CAU',
    'https://www.ixpap.com/images/2021/07/ixpap-3.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPawbMOLSIUu6wPLNzV8scEzOf1U08ZSDRcfhpDPjvkrwYvzfBWQ_zPUC4eatQFy49l8w&usqp=CAU'
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8Comow-_15dD_pQqPO0QaS9iEO_EiWwheHjp6makkrNhRoF7QB8asr6SnoX7QkD81Xbo&usqp=CAU',
    'https://images.unsplash.com/photo-1454391304352-2bf4678b1a7a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8&w=1000&q=80',
    'https://www.whatspaper.com/wp-content/uploads/2021/03/travel-wallpaper-whatspaper.jpg',
    'https://www.whatspaper.com/wp-content/uploads/2022/08/hd-travel-wallpaper-whatspaper-3.jpg',
    'https://w0.peakpx.com/wallpaper/451/131/HD-wallpaper-travel-often-arrow-highway-inspiration-journey-motivation-mountain-quotes-road-sayings-thumbnail.jpg',
  ];

  final gridtravelImage2 = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPpE4u767vYGJTjhFlrBzcd1AAv0IWUEF-dg&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcToWeA8bldYOReMkh7plTOb_m9p5rTKtMVvtA&usqp=CAU',
    'https://im.whatshot.in/img/2020/Mar/11111968-1577584319174693-249889397521196772-o-palmwood-cropped-2-1583914002.jpg',
    'https://www.thebrokebackpacker.com/wp-content/uploads/2019/06/where-to-stay-mumbai-pin.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSAXmkMO3smWCuo7E24xE-wndYChLcfXaRU3g&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbs3YEQB_KDM7SJHe7D8-pBCz3yoKccPjOSw&usqp=CAU',
  ];
  int activeIndex = 0;
  void changeIndex(index) {
    activeIndex = index;
    update();
  }
}
