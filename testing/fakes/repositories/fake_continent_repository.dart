// Copyright 2024 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter_mvvm_template/data/repositories/continent/continent_repository.dart';
import 'package:flutter_mvvm_template/domain/models/continent/continent.dart';
import 'package:flutter_mvvm_template/utils/result.dart';
import 'package:flutter/foundation.dart';

class FakeContinentRepository implements ContinentRepository {
  @override
  Future<Result<List<Continent>>> getContinents() {
    return SynchronousFuture(
      Result.ok([
        const Continent(name: 'CONTINENT', imageUrl: 'URL'),
        const Continent(name: 'CONTINENT2', imageUrl: 'URL'),
        const Continent(name: 'CONTINENT3', imageUrl: 'URL'),
      ]),
    );
  }
}
