import 'package:flutter/material.dart';
import 'package:sei_asia_dev_test/constants/assets.dart';
import 'package:sei_asia_dev_test/widgets/home/credit_info.dart';
import 'package:sei_asia_dev_test/widgets/home/logo_text.dart';
import 'package:sei_asia_dev_test/widgets/home/menu_button.dart';
import 'package:sei_asia_dev_test/widgets/home/section_divider.dart';
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
                _buildAppointmentInfo(Assets.iconCalendar, "14 Oct 2020"),
                _buildAppointmentInfo(Assets.iconClockAlt, '12:30 PM'),
                _buildAppointmentInfo(
                  Assets.iconLocationAlt,
                  '123 Plant Street, 1/1 …',
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

  Widget _buildAppointmentInfo(String iconPath, String value) {
    return Row(
      children: [
        Image.asset(iconPath, width: 12, height: 12),
        const SizedBox(width: 5),
        Text(value, style: const TextStyle(fontSize: 14, color: Colors.white)),
      ],
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
          _buildPlantCategory(Assets.shopPlants1),
          _buildPlantCategory(Assets.shopPlants2),
          _buildPlantCategory(Assets.shopPlants3),
          _buildPlantCategory(Assets.shopPlants4),
          _buildPlantCategory(Assets.shopPlants5),
        ],
      ),
    );
  }

  Widget _buildPlantCategory(String iconPath) {
    return Container(
      width: 78,
      margin: const EdgeInsets.only(right: 12),
      child: ColorFiltered(
        colorFilter: const ColorFilter.mode(
          Color(0xFFF4F4F4),
          BlendMode.modulate,
        ),
        child: Image.asset(iconPath, fit: BoxFit.contain),
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
                      _buildNavIcon(Assets.shopPlants1),
                      _buildNavIcon(Assets.shopPlants2),
                      _buildNavIcon(Assets.shopPlants3),
                      _buildNavIcon(Assets.shopPlants4),
                      _buildNavIcon(Assets.shopPlants5),
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

  Widget _buildNavIcon(String iconPath) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.only(right: 12),
        child: Image.asset(iconPath, width: 60, height: 60, fit: BoxFit.contain),
      ),
    );
  }
}
