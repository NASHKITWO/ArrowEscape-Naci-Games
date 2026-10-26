import 'package:arrowescapade/data/level_generator/level_generator.dart';
import 'package:arrowescapade/data/level_generator/solver.dart';
import 'package:arrowescapade/data/models/arrow.dart';
import 'package:arrowescapade/data/models/level.dart';
import 'package:flutter_test/flutter_test.dart';

LevelModel _level(int size, List<ArrowModel> arrows) =>
    LevelModel(levelNumber: 1, gridSize: size, arrows: arrows);

void main() {
  // B (0,1) menghadap atas -> bebas. A (0,0) menghadap kanan -> terhalang B.
  // Satu-satunya urutan valid: B dulu, baru A.
  LevelModel solvable() => _level(3, [
        ArrowModel(id: 'a', row: 0, col: 0, direction: ArrowDirection.right),
        ArrowModel(id: 'b', row: 0, col: 1, direction: ArrowDirection.up),
      ]);

  // A dan B saling menghalangi -> tidak mungkin diselesaikan.
  LevelModel deadlock() => _level(2, [
        ArrowModel(id: 'a', row: 0, col: 0, direction: ArrowDirection.right),
        ArrowModel(id: 'b', row: 0, col: 1, direction: ArrowDirection.left),
      ]);

  group('LevelSolver.solve', () {
    test('menemukan urutan yang benar', () {
      expect(LevelSolver.solve(solvable()), ['b', 'a']);
    });

    test('mengembalikan null untuk level buntu', () {
      expect(LevelSolver.solve(deadlock()), isNull);
    });
  });

  group('LevelGenerator.greedySolve', () {
    test('menemukan urutan yang benar', () {
      expect(LevelGenerator.greedySolve(solvable()), ['b', 'a']);
    });

    test('mengembalikan null untuk level buntu', () {
      expect(LevelGenerator.greedySolve(deadlock()), isNull);
    });
  });
}
