

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:injectable/injectable.dart';

@injectable @singleton
class ConnectivityCheckerHelper {
  Future<bool> checkConnectivity() async {
    final ConnectivityResult connectivityResult =
    await Connectivity().checkConnectivity();
    return _handleResult(connectivityResult);
  }

  Future<ConnectivityResult> getConnectivityResult() async {
    final ConnectivityResult connectivityResult =
    await Connectivity().checkConnectivity();
    return connectivityResult;
  }

   Stream<ConnectivityResult> listenToConnectivityChanged() {
    return Connectivity().onConnectivityChanged;
  }

  bool _handleResult(ConnectivityResult connectivityResult) {
    final bool connected;
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      connected = true;
    } else {
      connected = false;
    }

    return connected;
  }
}
