import 'package:get/get_instance/src/bindings_interface.dart';

/// This will be like the root dependency injection for all of our controllers to use through the Get X library.
class AppBindings extends Bindings {
  // Injections:
  @override
  void dependencies() {
    // Bindings:
    // Get.lazyPut<HomeController>(() => HomeController());
  }
}
