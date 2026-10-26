import 'package:arrowescapade/core/seed_utils.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('stableHash (FNV-1a 32-bit)', () {
    test('cocok dengan vektor uji FNV-1a standar', () {
      expect(stableHash(''), 0x811c9dc5);
      expect(stableHash('a'), 0xe40c292c);
      expect(stableHash('foobar'), 0xbf9cf968);
    });

    test('selalu menghasilkan nilai yang sama untuk input sama', () {
      expect(stableHash('ROOM-ABC'), stableHash('ROOM-ABC'));
    });
  });

  group('roomCodeToLevelNumber', () {
    test('kode angka dipakai apa adanya', () {
      expect(roomCodeToLevelNumber('ROOM-849201'), 849201);
      expect(roomCodeToLevelNumber('AE-12'), 12);
      expect(roomCodeToLevelNumber('77'), 77);
    });

    test('mengabaikan spasi dan huruf besar/kecil', () {
      expect(roomCodeToLevelNumber('  room-5  '), 5);
      expect(roomCodeToLevelNumber('abc'), roomCodeToLevelNumber('ABC'));
    });

    test('kode kosong atau tanpa angka valid -> level 1 / hash', () {
      expect(roomCodeToLevelNumber(''), 1);
      expect(roomCodeToLevelNumber('ROOM-'), 1);
    });

    test('teks bebas deterministik dan berada di rentang 1..999999', () {
      final a = roomCodeToLevelNumber('halo-dunia');
      expect(a, roomCodeToLevelNumber('halo-dunia'));
      expect(a, inInclusiveRange(1, 999999));
    });
  });
}
