import 'package:flutter/material.dart';

class TopBrandsWidget extends StatelessWidget {
  const TopBrandsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 16),
        const Text(
          'Top Brands',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 10, 63, 137),
          ),
        ),
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildCurvedContainer('assets/brands/image 64.png'),
              _buildCurvedContainer('assets/brands/image 66.png'),
              _buildCurvedContainer('assets/brands/image 67.png'),
              _buildCurvedContainer('assets/brands/image 68.png'),
            ],
          ),
        ),
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildCurvedContainer('assets/brands/image 69.png'),
              _buildCurvedContainer('assets/brands/image 70.png'),
              _buildCurvedContainer('assets/brands/image 71.png'),
              _buildCurvedContainer('assets/brands/image 72.png'),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildCurvedContainer(String imagePath) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: _buildCurvedBorderRadius(),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(239, 206, 183, 126),
            blurRadius: 8,
          ),
        ],
      ),
      child: Image.asset(imagePath),
    );
  }

  BorderRadius _buildCurvedBorderRadius() {
    return const BorderRadius.horizontal(
      left: Radius.circular(12),
      right: Radius.circular(12),
    );
  }
}
