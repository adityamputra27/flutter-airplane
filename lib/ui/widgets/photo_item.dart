import 'package:flutter/material.dart';
import 'package:airplane/shared/theme.dart';

class PhotoItem extends StatelessWidget {
  final String imageUrl;

  const PhotoItem({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      margin: const EdgeInsets.only(
        right: 16,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            imageUrl,
          ),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(
          defaultRadius,
        ),
      ),
    );
  }
}
