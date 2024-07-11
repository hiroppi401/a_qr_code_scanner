import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class LifecycleEventHandler extends WidgetsBindingObserver {
  LifecycleEventHandler({
    required this.resumeCallBack,
  });

  late final AsyncCallback resumeCallBack;

  @override
  Future<void> didChangeAppLifecycleState(AppLifecycleState state) async {
    if (state == AppLifecycleState.resumed) {
      await resumeCallBack();
    }

    // switch (state) {
    //   case AppLifecycleState.resumed:
    //     await resumeCallBack();
    //     break;
    //   case AppLifecycleState.inactive:
    //   case AppLifecycleState.paused:
    //   case AppLifecycleState.detached:
    // }
  }
}
