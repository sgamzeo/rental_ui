import 'package:get/get.dart';
import 'package:rental_ui/feature/onboarding/onboarding_binding.dart';
import 'package:rental_ui/feature/onboarding/onboarding_view.dart';
import 'app_routes.dart';

class AppPages {
  static final pages = <GetPage>[
    GetPage(
      name: AppRoutes.onboarding,
      page: () => OnboardingView(),
      binding: OnboardingBinding(),
    ),
  ];
}
