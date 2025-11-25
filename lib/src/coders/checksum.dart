part of 'coder.dart';

class Checksum implements Coder<Uint8List, Uint8List> {
  int length;
  Uint8List Function(Uint8List data) fn;

  Checksum(this.length, this.fn);

  Uint8List encode(Uint8List data) {
    final sum = fn(data).sublist(0, length);
    final res = Uint8List(data.length + length);
    res.setAll(0, data);
    res.setAll(data.length, sum);
    return res;
  }

  Uint8List decode(Uint8List data) {
    if (data.length < length) {
      throw Exception('Data too short for checksum');
    }
    final payload = data.sublist(0, data.length - length);
    final oldChecksum = data.sublist(data.length - length);
    final newCheksum = fn(payload).sublist(0, length);
    for (var i = 0; i < oldChecksum.length; i++) {
      if (oldChecksum[i] != newCheksum[i]) {
        throw Exception('Invalid checksum: ');
      }
    }
    return payload;
  }
}
