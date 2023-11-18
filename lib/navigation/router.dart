import "package:get/get.dart";
import "package:my_movie_list_v2/navigation/routes.dart";
import "package:my_movie_list_v2/view/main_scaffold/main_scaffold.dart";

class AppRouter {
  static final routers = [
    GetPage(
      name: AppRoutes.mainScreen,
      page: () => const MainScaffold(),
    ),
  ];

  Future<void> navigateToMainScreen() async {
    return await Get.offAllNamed(AppRoutes.mainScreen);
  }
}
