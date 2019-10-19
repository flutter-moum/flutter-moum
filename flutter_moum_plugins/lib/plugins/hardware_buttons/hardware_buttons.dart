import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hardware_buttons/hardware_buttons.dart' as HardwareButtons;

class HardwareButtonsPlugin extends StatefulWidget {
  @override
  _HardwareButtonsState createState() => _HardwareButtonsState();
}

class _HardwareButtonsState extends State<HardwareButtonsPlugin> {
  String _latestHardwareButtonEvent;

  StreamSubscription<
      HardwareButtons.VolumeButtonEvent> _volumeButtonSubscription;
  StreamSubscription<HardwareButtons.HomeButtonEvent> _homeButtonSubscription;
  StreamSubscription<HardwareButtons.LockButtonEvent> _lockButtonSubscription;

  @override
  void initState() {
    super.initState();
    _volumeButtonSubscription =
        HardwareButtons.volumeButtonEvents.listen((event) {
          setState(() {
            _latestHardwareButtonEvent = event.toString();
          });
        });

    _homeButtonSubscription = HardwareButtons.homeButtonEvents.listen((event) {
      setState(() {
        _latestHardwareButtonEvent = 'HOME_BUTTON';
      });
    });

    _lockButtonSubscription = HardwareButtons.lockButtonEvents.listen((event) {
      setState(() {
        _latestHardwareButtonEvent = 'LOCK_BUTTON';
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    _volumeButtonSubscription?.cancel();
    _homeButtonSubscription?.cancel();
    _lockButtonSubscription?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('Value: $_latestHardwareButtonEvent\n'),
            ],
          ),
        ),
      ),
    );
  }
}