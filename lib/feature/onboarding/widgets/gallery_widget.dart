import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rental_ui/core/component/custom_overlay.dart';

class GalleryWidget extends StatelessWidget {
  const GalleryWidget({super.key});

  static const List<String> images = [
    'assets/images/1.png',
    'assets/images/2.png',
    'assets/images/3.png',
    'assets/images/4.png',
    'assets/images/5.png',
    'assets/images/6.png',
    'assets/images/7.png',
    'assets/images/8.png',
    'assets/images/9.png',
  ];

  @override
  Widget build(BuildContext context) {
    final column1 = images.sublist(0, 3);
    final column2 = images.sublist(3, 6);
    final column3 = images.sublist(6, 9);

    return SizedBox(
      height: 508.h,
      width: double.infinity,
      child: Stack(
        children: [
          ClipRect(
            child: Align(
              alignment: Alignment.topCenter,
              heightFactor: 0.9,
              child: Column(
                children: [
                  SizedBox(height: 5.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.h),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildColumn(column1),
                        SizedBox(width: 9.h),
                        _buildColumn(column2),
                        SizedBox(width: 9.h),
                        _buildColumn(column3),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          Positioned(
            left: 0,
            right: 0,
            bottom: 50,
            height: 508.h,
            child: CustomOverlay(),
          ),
        ],
      ),
    );
  }

  Widget _buildColumn(List<String> images) {
    return Expanded(
      child: Column(
        children: images
            .map(
              (img) => Padding(
                padding: EdgeInsets.only(bottom: 9.h),
                child: _galleryItem(img),
              ),
            )
            .toList(),
      ),
    );
  }

  Widget _galleryItem(String path) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.r),
      child: Image.asset(path, fit: BoxFit.cover),
    );
  }
}
