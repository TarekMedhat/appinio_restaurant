import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CubitObserver extends BlocObserver {
  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    debugPrint("StackTrace: $stackTrace");
    debugPrint("Error: $error");
    super.onError(bloc, error, stackTrace);
  }
}
