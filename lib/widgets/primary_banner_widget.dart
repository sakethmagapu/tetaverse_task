import 'package:flutter/material.dart';

class PrimaryBannerWidget extends StatelessWidget {
  const PrimaryBannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            const BannerWidget(),
            Positioned(
              left: 8,
              top: 50,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.chevron_left,
                  color: Colors.red,
                ),
                color: Colors.white,
              ),
            ),
            Positioned(
              right: 8,
              top: 50,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.chevron_right,
                  color: Colors.red,
                ),
                color: Colors.white,
              ),
            ),
          ],
        ),
        const SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Dot(),
            SizedBox(width: 10),
            Dot(),
            SizedBox(width: 10),
            Dot(),
            SizedBox(width: 10),
            Dot(),
            SizedBox(width: 10),
            Dot(),
          ],
        ),
      ],
    );
  }
}

class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/banner_1.png',
      fit: BoxFit.cover,
    );
  }
}

class Dot extends StatelessWidget {
  const Dot({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 8,
      height: 8,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Color.fromARGB(255, 39, 104, 165),
      ),
    );
  }
}
