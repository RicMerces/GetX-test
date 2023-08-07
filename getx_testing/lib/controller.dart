import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class Controller extends GetxController {
  final RxInt numero = 0.obs;

  void addNumero() => numero.value++;
}
