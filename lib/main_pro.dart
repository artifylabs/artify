// Copyright 2024 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:logging/logging.dart';
import 'package:provider/provider.dart';

import 'config/dependencies.dart';
import 'main_common.dart';

/// Default main method
void main() {
  // Launch development config by default
  Logger.root.level = Level.ALL;

  runApp(
    MultiProvider(
      providers: kReleaseMode ? providersRemote : providersLocal,
      child: const MainApp(),
    ),
  );
}
