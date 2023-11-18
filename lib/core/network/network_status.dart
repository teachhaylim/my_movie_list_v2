class StatusCode {
  static int requiredAuthentication = 605;
  static int invalidSessionToken = 900;
  static int unknownError = -1;
  static int timeout = 408;
  static int somethingWentWrong = 1001;
  static int noInternetConnection = 1002;
  static int invalidInstallation = 650;
}

class StatusMessage {
  static String requiredAuthentication = "Required Authentication";
  static String unknownError = "Unknown Error";
  static String timeout = "Timeout";
  static String somethingWentWrong = "Something went wrong";
  static String socketError = "Socket Error";
  static String noInternetConnection = "No Internet Connection";
  static String invalidInstallation = "Invalid installation";
}
