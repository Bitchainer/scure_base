part of 'coder.dart';

class Joiner implements Coder<List<String>, String> {
  final String separator;

  Joiner([this.separator = '']);

  @override
  String encode(List<String> from) {
    return from.join(separator);
  }

  @override
  List<String> decode(String to) {
    return to.split(separator);
  }
}
