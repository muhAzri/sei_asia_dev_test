import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:sei_asia_dev_test/constants/assets.dart';
import 'package:sei_asia_dev_test/widgets/home/appointment_info.dart';
import 'package:sei_asia_dev_test/widgets/home/credit_info.dart';
import 'package:sei_asia_dev_test/widgets/home/discovery_card.dart';
import 'package:sei_asia_dev_test/widgets/home/location_item.dart';
import 'package:sei_asia_dev_test/widgets/home/logo_text.dart';
import 'package:sei_asia_dev_test/widgets/home/menu_button.dart';
import 'package:sei_asia_dev_test/widgets/home/plant_category_icon.dart';
import 'package:sei_asia_dev_test/widgets/home/section_divider.dart';
import 'package:sei_asia_dev_test/widgets/home/shop_nav_icon.dart';
import 'package:sei_asia_dev_test/widgets/product_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          HomeHeader(),
          HomeBanner(),
          HomeButtons(),
          PlantCategories(),
          NewServicesSection(),
          ShopNavigation(),
          TrendingDiscoveries(),
          LocationSection(),
        ],
      ),
    );
  }
}

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 12, bottom: 28),
      decoration: const BoxDecoration(color: Color(0xFF244B3A)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          LogoText(),
          const SizedBox(height: 6),
          SectionDivider(label: "NEXT APPOINMENT"),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AppointmentInfo(
                  iconPath: Assets.iconCalendar,
                  value: "14 Oct 2020",
                ),
                AppointmentInfo(
                  iconPath: Assets.iconClockAlt,
                  value: '12:30 PM',
                ),
                AppointmentInfo(
                  iconPath: Assets.iconLocationAlt,
                  value: '123 Plant Street, 1/1 …',
                ),
              ],
            ),
          ),
          const SizedBox(height: 14),
          CreditInfoWidget(credit: 100, points: 10, package: 1),
        ],
      ),
    );
  }
}

class HomeBanner extends StatelessWidget {
  const HomeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(Assets.bannerHome)),
      ),
    );
  }
}

class HomeButtons extends StatelessWidget {
  const HomeButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 17, bottom: 22),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          MenuButton(text: 'SHOP', onPressed: () {}),
          MenuButton(text: 'SERVICES', onPressed: () {}),
          MenuButton(text: 'POSTS', onPressed: () {}),
        ],
      ),
    );
  }
}

class PlantCategories extends StatelessWidget {
  const PlantCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: [
          PlantCategoryIcon(iconPath: Assets.shopPlants1),
          PlantCategoryIcon(iconPath: Assets.shopPlants2),
          PlantCategoryIcon(iconPath: Assets.shopPlants3),
          PlantCategoryIcon(iconPath: Assets.shopPlants4),
          PlantCategoryIcon(iconPath: Assets.shopPlants5),
        ],
      ),
    );
  }
}

class NewServicesSection extends StatelessWidget {
  const NewServicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0XFFF4F4F4),
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'NEW SERVICES',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Recommended based on your preference',
                      style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'View All',
                    style: TextStyle(fontSize: 14, color: Color(0xFF2D5F4D)),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          SizedBox(
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              children: [
                ProductCard(
                  imageUrl: Assets.photoImage,
                  category: 'Lorem Ipsum',
                  title: 'Lorem ipsum dolor sit amet consectetur',
                  price: 'RM 10.00',
                ),
                ProductCard(
                  imageUrl: Assets.photoImage,
                  category: 'Lorem Ipsum',
                  title: 'Lorem ipsum dolor sit amet consectetur',
                  price: 'RM 10.00',
                ),
                ProductCard(
                  imageUrl: Assets.photoImage,
                  category: 'Lorem Ipsum',
                  title: 'Lorem ipsum dolor sit amet consectetur',
                  price: 'RM 10.00',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ShopNavigation extends StatelessWidget {
  const ShopNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0XFFF4F4F4),
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                Assets.shopPlantsMain,
                height: 80,
                fit: BoxFit.contain,
              ),
              const SizedBox(width: 16),
              Expanded(
                child: SizedBox(
                  height: 60,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      ShopNavIcon(iconPath: Assets.shopPlants1),
                      ShopNavIcon(iconPath: Assets.shopPlants2),
                      ShopNavIcon(iconPath: Assets.shopPlants3),
                      ShopNavIcon(iconPath: Assets.shopPlants4),
                      ShopNavIcon(iconPath: Assets.shopPlants5),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Container(
            height: 4,
            decoration: BoxDecoration(
              color: const Color(0xFF2D5F4D),
              borderRadius: BorderRadius.circular(2),
            ),
          ),
        ],
      ),
    );
  }
}

class TrendingDiscoveries extends StatelessWidget {
  const TrendingDiscoveries({super.key});

  static final List<Map<String, dynamic>> _discoveries = [
    {
      'title': 'Lorem ipsum dolor sit amet consectetur adipiscing elit',
      'maxLines': 3,
    },
    {
      'title':
          'Lorem ipsum dolor sit amet consectetur adipiscing elit. Lorem ipsum dolor sit amet',
      'maxLines': 4,
    },
    {'title': 'Lorem ipsum dolor sit amet consectetur', 'maxLines': 2},
    {'title': 'Lorem ipsum dolor sit amet', 'maxLines': 2},
    {
      'title':
          'Lorem ipsum dolor sit amet consectetur adipiscing elit. Lorem ipsum dolor sit amet',
      'maxLines': 4,
    },
    {
      'title': 'Lorem ipsum dolor sit amet consectetur adipiscing elit',
      'maxLines': 3,
    },
    {
      'title': 'Lorem ipsum dolor sit amet consectetur adipiscing elit',
      'maxLines': 3,
    },
    {'title': 'Lorem ipsum dolor sit amet consectetur', 'maxLines': 2},
    {'title': 'Lorem ipsum dolor sit amet', 'maxLines': 2},
    {
      'title':
          'Lorem ipsum dolor sit amet consectetur adipiscing elit. Lorem ipsum',
      'maxLines': 3,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 200,
          child: ClipRect(
            child: OverflowBox(
              maxHeight: 220,
              alignment: Alignment.topCenter,
              child: Transform.translate(
                offset: const Offset(0, 15),
                child: Image.asset(
                  Assets.bannerTrendingDiscoveries,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        Container(
          color: Color(0XFF112F22),
          padding: const EdgeInsets.all(16),
          child: MasonryGridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: _discoveries.length,
            itemBuilder: (context, index) {
              final discovery = _discoveries[index];
              return DiscoveryCard(
                title: discovery['title'],
                maxLines: discovery['maxLines'],
              );
            },
          ),
        ),
      ],
    );
  }
}

class LocationSection extends StatelessWidget {
  const LocationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              'LOCATION',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.2,
              ),
            ),
          ),
          Container(
            height: 250,
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(8),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                Assets.photoImage,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 24),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                LocationItem(
                  title: 'Sunway Pyramid',
                  address:
                      '10 Floor, Lorem Ipsum Mall, Jalan ss23 Lorem, Selangor, Malaysia',
                  operatingHours: '10am - 10pm',
                ),
                LocationItem(
                  title: 'The Gardens Mall',
                  address:
                      '10 Floor, Lorem Ipsum Mall, Jalan ss23 Lorem, Selangor, Malaysia',
                  operatingHours: '10am - 10pm',
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
