// Copyright 2024 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:artify/data/repositories/destination/destination_repository.dart';
import 'package:artify/domain/models/destination/destination.dart';
import 'package:artify/utils/result.dart';
import 'package:flutter/foundation.dart';

import '../../models/destination.dart';

class FakeDestinationRepository implements DestinationRepository {
  @override
  Future<Result<List<Destination>>> getDestinations() {
    return SynchronousFuture(Result.ok([kDestination1, kDestination2]));
  }
}
