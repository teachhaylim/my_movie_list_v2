import "package:connectivity_plus/connectivity_plus.dart";
import "package:flutter/material.dart";

//TODO: fix package import error
class NetworkMonitor with ChangeNotifier {
  // ValueNotifier<bool?> isConnected = ValueNotifier(null);
  // ValueNotifier<bool?> isPreviouslyConnected = ValueNotifier(null);

  // NetworkMonitor() {
  //   _checkConnectivity();
  //   observeConnectivity();
  // }

  // Future<bool> checkConnectivity() async {
  //   final result = await Connectivity().checkConnectivity();

  //   if (result == ConnectivityResult.none) return false;

  //   final hasConnection = await InternetConnectionCheckerPlus().hasConnection;

  //   if (!hasConnection) return false;

  //   return true;
  // }

  // void _checkConnectivity() async {
  //   final result = await Connectivity().checkConnectivity();

  //   if (result == ConnectivityResult.none) {
  //     isConnected.value = false;
  //     isPreviouslyConnected.value = false;
  //     notifyListeners();
  //     return;
  //   }

  //   final hasConnection = await InternetConnectionCheckerPlus().hasConnection;

  //   if (!hasConnection) {
  //     isConnected.value = false;
  //     isPreviouslyConnected.value = false;
  //     notifyListeners();
  //     return;
  //   }

  //   isConnected.value = true;
  //   notifyListeners();
  // }

  // void observeConnectivity() {
  //   Connectivity().onConnectivityChanged.listen((result) => _checkConnectivity());
  // }

  // void internetConnectionListener({required BuildContext context}) {
  //   final lvIsConnected = isConnected.value;
  //   final lvIsPreviouslyConnected = isPreviouslyConnected.value;

  //   if (lvIsConnected == false) {
  //     // CustomBanner.showNoInternetDialog(context: context);
  //   }

  //   if (lvIsPreviouslyConnected == false && lvIsConnected == true) {
  //     // CustomBanner.hideNoInternetDialog(context: context);
  //   }
  // }
}
