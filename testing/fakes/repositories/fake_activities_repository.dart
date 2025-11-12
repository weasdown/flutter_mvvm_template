// Copyright 2024 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter_mvvm_template/data/repositories/activity/activity_repository.dart';
import 'package:flutter_mvvm_template/domain/models/activity/activity.dart';
import 'package:flutter_mvvm_template/utils/result.dart';
import 'package:flutter/foundation.dart';

import '../../models/activity.dart';
import '../../models/destination.dart';

class FakeActivityRepository implements ActivityRepository {
  Map<String, List<Activity>> activities = {
    "DESTINATION": [kActivity],
    kDestination1.ref: [kActivity],
  };

  @override
  Future<Result<List<Activity>>> getByDestination(String ref) {
    return SynchronousFuture(Result.ok(activities[ref]!));
  }
}
