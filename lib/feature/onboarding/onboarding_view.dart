import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rental_ui/feature/onboarding/widgets/gallery_widget.dart';
import '../../core/routes/app_routes.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Column(
              children: [
                GalleryWidget(),
                Text(
                  'New Place, New Home!',
                  style: Theme.of(context).textTheme.titleLarge,
                  textAlign: TextAlign.center,
                ),

                SizedBox(height: 12.h),

                /// DESCRIPTION
                Text(
                  'Are you ready to uproot and start over in a new area? '
                  'Placoo will help you on your journey!',
                  textAlign: TextAlign.center,
                ),

                SizedBox(height: 24.h),

                /// CTA BUTTON
                ElevatedButton(
                  onPressed: () => Get.toNamed(AppRoutes.signIn),
                  child: const Text('Log in'),
                ),

                TextButton(
                  onPressed: () => Get.toNamed(AppRoutes.signUp),
                  child: const Text('Sign up'),
                ),
              ],
            ),

            /// TITLE
          ],
        ),
      ),
    );
  }
}
