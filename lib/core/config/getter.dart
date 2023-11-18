//* Misc
import "package:get_it/get_it.dart";
import "package:logger/logger.dart";
import "package:my_movie_list_v2/core/config/asset_resource.dart";
import "package:my_movie_list_v2/core/config/network_monitor.dart";
import "package:my_movie_list_v2/core/styles/styles.dart";

GetIt get $getIt => GetIt.I;
Logger get $logger => Logger();

//* App
ImageResource get $imageRes => $getIt<ImageResource>();
AppStyles get $styles => $getIt<AppStyles>();
NetworkMonitor get $networkMonitor => $getIt<NetworkMonitor>();
