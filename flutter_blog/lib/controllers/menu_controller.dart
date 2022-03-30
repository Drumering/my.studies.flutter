import 'package:get/state_manager.dart';

class MenuController extends GetxController {
  final RxInt _selectedIndex = 0.obs;

  int get selectedIndex => _selectedIndex.value;
  List<String> get menuItems =>
      ['Cases', 'Services', 'About Us', 'Carrers', 'Blog', 'Contact'];

  void setMenuIndex(int index) => _selectedIndex.value = index;
}
