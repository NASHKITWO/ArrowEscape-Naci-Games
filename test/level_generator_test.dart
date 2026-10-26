import 'dart:convert';

import 'package:arrowescapade/core/constants.dart';
import 'package:arrowescapade/data/level_generator/level_generator.dart';
import 'package:flutter_test/flutter_test.dart';

// Campuran level normal (1-3), boss (5), dan god (10).
const _levels = [1, 2, 3, 5, 10];

void main() {
  group('LevelGenerator.generateLevel', () {
    for (final n in _levels) {
      test('level $n: deterministik (nomor sama -> level sama)', () {
        final a = jsonEncode(LevelGenerator.generateLevel(n).toJson());
        final b = jsonEncode(LevelGenerator.generateLevel(n).toJson());
        expect(a, b);
      }, timeout: const Timeout(Duration(minutes: 2)));

      test('level $n: struktur valid', () {
        final level = LevelGenerator.generateLevel(n);
        final size = level.gridSize;

        expect(level.levelNumber, n);
        expect(size, AppConstants.gridSizeForLevel(n));
        expect(level.arrows, isNotEmpty);

        final ids = level.arrows.map((a) => a.id).toList();
        expect(ids.toSet().length, ids.length, reason: 'id panah harus unik');

        final used = <String>{};
        for (final arrow in level.arrows) {
          expect(arrow.path, isNotEmpty);
          for (final cell in arrow.path) {
            expect(cell[0], inInclusiveRange(0, size - 1));
            expect(cell[1], inInclusiveRange(0, size - 1));
            expect(used.add('${cell[0]},${cell[1]}'), isTrue,
                reason: 'sel ${cell[0]},${cell[1]} dipakai dua panah');
          }
        }

        for (final dot in level.orphanDots) {
          expect(dot.row, inInclusiveRange(0, size - 1));
          expect(dot.col, inInclusiveRange(0, size - 1));
        }
      }, timeout: const Timeout(Duration(minutes: 2)));

      test('level $n: bisa diselesaikan', () {
        final level = LevelGenerator.generateLevel(n);
        final order = LevelGenerator.greedySolve(level);

        expect(order, isNotNull, reason: 'level $n tidak solvable');
        expect(order!.length, level.arrows.length);
        expect(order.toSet(), level.arrows.map((a) => a.id).toSet());
      }, timeout: const Timeout(Duration(minutes: 2)));
    }
  });
}
