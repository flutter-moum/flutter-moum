import 'package:flutter/material.dart';
import 'package:flutter_moum_plugins/moum_plugins.dart';
import 'package:flutter_moum_plugins/plugins/hardware_buttons/hardware_buttons.dart';
import 'package:flutter_moum_plugins/plugins/open_appstore/open_appstore.dart';
import 'package:flutter_moum_plugins/plugins/screenshot_callback/screenshot_callback.dart';
import 'package:flutter_moum_plugins/plugins/sim_info/sim_info.dart';

final routes = {
  '/': (BuildContext context) => MoumPlugins(),
  '/open_appstore': (BuildContext context) => OpenAppstorePlugin(),
  '/screenshot_callback': (BuildContext context) => ScreenshotCallbackPlugin(),
  '/hardware_buttons': (BuildContext context) => HardwareButtonsPlugin(),
  '/sim_info': (BuildContext context) => SimInfoPlugin(),
};