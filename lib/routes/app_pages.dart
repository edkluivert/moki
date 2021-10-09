import 'package:get/get.dart';
import 'package:moki/features/details/detail_binding.dart';
import 'package:moki/features/details/detail_screen.dart';
import 'package:moki/features/root/root_binding.dart';
import 'package:moki/features/root/root_screen.dart';

import 'app_routes.dart';

class AppPages {
  static var list = [
  GetPage(
  name: AppRoutes.root,
  page: () => const RootScreen(),
  transition:Transition.rightToLeft,
  binding: RootBinding(),
    ),
  ];
}