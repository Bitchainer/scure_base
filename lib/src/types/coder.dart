import 'dart:typed_data';

import 'package:scure_base/src/coders/coder.dart';

typedef BytesCoder = Coder<Uint8List, String>;
typedef Chain = Coder<dynamic, dynamic>;
