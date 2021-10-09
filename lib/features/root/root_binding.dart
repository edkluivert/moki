import 'package:get/get.dart';
import 'package:moki/features/root/root_controller.dart';

class RootBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => RootController());
  }

}