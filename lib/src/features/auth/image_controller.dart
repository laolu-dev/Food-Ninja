import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';

final cameraProvider = FutureProvider((ref) async {
  Future<String?> camera() async {
    final picker = ImagePicker();
    try {
      await picker.pickImage(source: ImageSource.camera);
    } catch (e) {
      // ignore: avoid_print
      print(e);
    }
    return null;
  }

  return camera();
});
