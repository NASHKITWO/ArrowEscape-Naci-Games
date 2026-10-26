/// Hash string yang deterministik di semua platform dan versi Dart.
///
/// `String.hashCode` bawaan Dart TIDAK dijamin sama antar platform/versi,
/// jadi tidak boleh dipakai untuk seed yang harus identik di dua perangkat
/// (mis. kode room multiplayer). Ini FNV-1a 32-bit.
/// Catatan: memakai int 64-bit Dart VM (Android/iOS/desktop).
int stableHash(String input) {
  var hash = 0x811c9dc5;
  for (final unit in input.codeUnits) {
    hash ^= unit;
    hash = (hash * 0x01000193) & 0xFFFFFFFF;
  }
  return hash;
}

/// Mengubah kode room (mis. `ROOM-849201`, `AE-12`, atau teks bebas) menjadi
/// nomor level/seed yang sama di perangkat mana pun.
///
/// - Kode angka dipakai apa adanya (`ROOM-849201` -> 849201).
/// - Kode kosong -> 1.
/// - Teks lain -> hash FNV-1a, dipetakan ke 1..999999.
int roomCodeToLevelNumber(String code) {
  final cleaned =
      code.trim().toUpperCase().replaceAll('ROOM-', '').replaceAll('AE-', '');
  if (cleaned.isEmpty) return 1;
  final parsed = int.tryParse(cleaned);
  if (parsed != null && parsed > 0) return parsed;
  return (stableHash(cleaned) % 999999) + 1;
}
