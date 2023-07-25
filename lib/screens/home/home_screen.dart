import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/components/search_field.dart';
import 'package:ecommerce/screens/home/components/banner_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currenIndex = 0;
  late List<Widget> _bannerList;

  @override
  void initState() {
    _bannerList = [
      BannerCard(
        title1: '25%',
        title2: "Today's Special!",
        title3: 'Get discount for every order, only valid for today',
      ),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset('assets/images/person.png'),
              ),
              title: const Text(
                'Good Morning',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black38,
                ),
              ),
              subtitle: const Text(
                'Andrew Ainsley',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: Image.asset(
                      'assets/icons/notification.png',
                      width: 28,
                      height: 28,
                    ),
                    onPressed: () {
                      print("The notification button is pressed");
                    },
                  ),
                  IconButton(
                    onPressed: () {
                      const SnackBar(
                        content: Text("The favourite button in pressed"),
                      );
                    },
                    icon: Image.asset(
                      'assets/icons/favourite.png',
                      width: 32,
                      height: 35,
                    ),
                  ),
                ],
              ),
            ),
            const SearchField(),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Special Offers',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'See All',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            CarouselSlider(
              options: CarouselOptions(
                  autoPlay: true,
                  enlargeCenterPage: true,
                  aspectRatio: 18 / 8,
                  viewportFraction: 1,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _currenIndex = index;
                    });
                  }),
              items: _bannerList,
            )
          ],
        ),
      ),
    );
  }
}
