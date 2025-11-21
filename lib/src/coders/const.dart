part of 'coder.dart';

BytesCoder genBase58(String abc) {
  return Chainer([Radix(58), Alphabet(abc), Joiner('')]);
}

final BytesCoder base58 = genBase58(
  '123456789ABCDEFGHJKLMNPQRSTUVWXYZabcdefghijkmnopqrstuvwxyz',
);
