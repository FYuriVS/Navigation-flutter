class AppBaseController {
  int currentTab = 0;

  void onItemTapped({required int index}) {
    currentTab = index;
  }
}