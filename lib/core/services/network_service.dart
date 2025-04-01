import 'package:connectivity_plus/connectivity_plus.dart';

abstract class NetworkInfoService {
  Future<bool> get isConnected;
  Stream<ConnectivityResult> get onConnectivityChanged;
}

/// Android must always check for connectivity status as app is resumed
/// iOS can listen to a stream

class NetworkInfoServiceImpl implements NetworkInfoService {
  NetworkInfoServiceImpl(this._connectivity);
  final Connectivity _connectivity;
  bool res = false;

  Future<bool> _checkConnectivity() async {
    final connectivityResult = await _connectivity.checkConnectivity();
    if (connectivityResult != ConnectivityResult.none) {
      res = true;
    } else {
      res = false;
    }
    return res;
  }

  @override
  Future<bool> get isConnected => _checkConnectivity();

  @override
  Stream<ConnectivityResult> get onConnectivityChanged =>
      //_connectivity.onConnectivityChanged;

      _connectivity.onConnectivityChanged
          .asyncExpand((list) => Stream.fromIterable(list));
}
