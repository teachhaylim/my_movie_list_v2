import "package:dio/dio.dart";
import "package:easy_localization/easy_localization.dart";
import "package:hive_flutter/adapters.dart";
import "package:my_movie_list_v2/core/config/asset_resource.dart";
import "package:my_movie_list_v2/core/config/getter.dart";
import "package:my_movie_list_v2/core/config/network_monitor.dart";
import "package:my_movie_list_v2/core/network/api_request.dart";
import "package:my_movie_list_v2/core/styles/styles.dart";

class AppLogic {
  static Future<void> bootStrap() async {
    await Hive.initFlutter();
    await EasyLocalization.ensureInitialized();
    await _initDependencyInjector();
    await _initHivBox();
    await _initFirebaseConfiguration();
    await _init();
  }

  static Future<void> _initDependencyInjector() async {
    // final DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    // final AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
    // final IosDeviceInfo iosInfo = await deviceInfo.iosInfo;

    $getIt.registerLazySingleton<Dio>(() => dio);
    $getIt.registerLazySingleton<AppStyles>(() => AppStyles());
    $getIt.registerLazySingleton<NetworkMonitor>(() => NetworkMonitor());
    $getIt.registerLazySingleton<ImageResource>(() => ImageResource());
  }

  static Future<void> _initHivBox() async {
    //TODO: add logic
  }

  static Future<void> _initFirebaseConfiguration() async {
    //TODO: add logic
  }

  static Future<void> _init() async {
    //TODO: add logic
  }
}
