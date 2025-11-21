import 'dart:typed_data';

// import 'package:scure_base/scure_base.dart';
// import 'package:scure_base/src/types/checksum.dart';
// import 'package:scure_base/src/types/coder.dart';
// import 'package:scure_base/src/types/radix.dart';
import 'package:scure_base/src/coders/coder.dart';
import 'package:test/test.dart';

void printBufHex(Uint8List data) {
  final hex = data.map((e) => e.toRadixString(16).padLeft(2, '0')).join();
  print(hex);
}

asciiToArray(String str) =>
    Uint8List.fromList(str.split('').map((c) => c.codeUnitAt(0)).toList());
void main() {
  group('A group of tests', () {
    setUp(() {
      // Additional setup goes here.
    });

    test('First Test', () {
      final data = asciiToArray('hello world');
      // print('Radix: $radix');
      final converted = base58.encode(data);
      print(converted); // Should print a Uint8List with the converted values
      // print(encoded); // Should print the base58 encoded string
    });
  });
}
