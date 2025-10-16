import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sei_asia_dev_test/constants/assets.dart';
import 'package:sei_asia_dev_test/widgets/product_card.dart';

class MallScreen extends StatelessWidget {
  const MallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => context.go('/home'),
        ),
        title: Container(
          height: 40,
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(8),
          ),
          child: TextField(
            textAlignVertical: TextAlignVertical.center,
            decoration: InputDecoration(
              hintText: 'Search Salon',
              hintStyle: TextStyle(color: Colors.grey[500], fontSize: 14),
              prefixIcon: Icon(Icons.search, color: Colors.grey[500], size: 20),
              border: InputBorder.none,
              contentPadding: EdgeInsets.zero,
              isDense: true,
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: Image.asset(Assets.iconFilter, width: 24, height: 24),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        color: Color(0XFFF4F4F4),
        child: GridView.builder(
          padding: const EdgeInsets.all(16),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.58,
            crossAxisSpacing: 1,
            mainAxisSpacing: 16,
          ),
          itemCount: 8,
          itemBuilder: (context, index) {
            final hasDiscount = index % 2 == 1;
            return ProductCard(
              imageUrl: Assets.photoImage,
              category: 'Lorem Ipsum',
              title: 'Lorem ipsum dolor sit amet consectetur adipiscing elit',
              price: hasDiscount ? 'RM 50.00' : 'RM 100.00',
              originalPrice: hasDiscount ? 'RM 100.00' : null,
              discount: hasDiscount ? '50%' : null,
            );
          },
        ),
      ),
    );
  }
}
