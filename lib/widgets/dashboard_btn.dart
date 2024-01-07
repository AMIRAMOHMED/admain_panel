import 'package:admain_panel/widgets/subtitle_text.dart';
import 'package:flutter/material.dart';

class DashboardButton extends StatelessWidget {
  const DashboardButton(
      {super.key,
      required this.imagePath,
      required this.title,
      required this.fun});

  final String imagePath, title;
  final Function fun;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        fun();
      },
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
              height: 65,
              width: 65,
            ),
            const SizedBox(height: 30),
            SubtitleTextWidget(
              label: title,
              fontSize: 18,
            )
          ],
        ),
      ),
    );
  }
}
