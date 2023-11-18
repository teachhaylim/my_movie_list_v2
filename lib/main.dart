import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:my_movie_list_v2/core/config/app_logic.dart";
import "package:my_movie_list_v2/navigation/router.dart";
import "package:my_movie_list_v2/navigation/routes.dart";
import "package:my_movie_list_v2/util/functions.dart";

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppLogic.bootStrap();
  runApp(const MyMovieListV2());
}

class MyMovieListV2 extends StatelessWidget {
  const MyMovieListV2({super.key});

  void _onInit() {
    //TODO: add logic
  }

  void _onReady() {
    //TODO: add logic
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "MyMovieListV2",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      getPages: AppRouter.routers,
      initialRoute: AppRoutes.mainScreen,
      debugShowCheckedModeBanner: false,
      onInit: _onInit,
      onReady: _onReady,
      builder: (context, child) {
        return GestureDetector(
          onTap: hideKeyboard,
          child: child,
        );
      },
    );
  }
}
