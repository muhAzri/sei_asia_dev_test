import 'package:flutter/material.dart';
import 'package:sei_asia_dev_test/constants/assets.dart';
import 'package:sei_asia_dev_test/widgets/home/credit_info.dart';
import 'package:sei_asia_dev_test/widgets/home/logo_text.dart';
import 'package:sei_asia_dev_test/widgets/home/menu_button.dart';
import 'package:sei_asia_dev_test/widgets/home/section_divider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [HomeHeader(), HomeBanner(), HomeButtons()]),
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
