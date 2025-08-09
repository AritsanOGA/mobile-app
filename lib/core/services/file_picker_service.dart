import 'package:file_picker/file_picker.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:logger/logger.dart';

class FilePickerService {
  factory FilePickerService() {
    return _filePicker;
  }

  FilePickerService._internal();
  static final FilePickerService _filePicker = FilePickerService._internal();
  final log = Logger();

  Future<String?> pickFiles(List<String> extensions) async {
    try {
      final paths = await FilePicker.platform
          .pickFiles(allowedExtensions: extensions, type: FileType.custom);
      return paths?.files.first.path;
    } on PlatformException catch (e) {
      log.e('Unsupported operation$e');
      return null;
    } catch (e) {
      log.e(e.toString());
      return null;
    }
  }

  Future<String?> pickImage() async {
    try {
      final paths = await ImagePicker().pickImage(source: ImageSource.gallery);
      return paths?.path;
    } on PlatformException catch (e) {
      log.e('Unsupported operation$e');
      return null;
    } catch (e) {
      log.e(e.toString());
      return null;
    }
  }

  // Future<List<String>?> pickImages() async {
  // try {
  //   final paths = await ImagePicker().(source: ImageSource.gallery,);
  //   return paths?.path;
  // } on PlatformException catch (e) {
  //   log.e('Unsupported operation$e');
  //   return null;
  // } catch (e) {
  //   log.e(e.toString());
  //   return null;
  // }
  // }

  Future<List<String>> pickImages({
    int? imageQuality, // 0-100 (optional compression on some platforms)
    double? maxWidth,
    double? maxHeight,
  }) async {
    try {
      final List<XFile> files = await ImagePicker().pickMultiImage(
        imageQuality: imageQuality,
        maxWidth: maxWidth,
        maxHeight: maxHeight,
      );
      return files.map((f) => f.path).toList(growable: false);
    } on PlatformException catch (e) {
      log.e('Unsupported operation: $e');
      return [];
    } catch (e) {
      log.e(e.toString());
      return [];
    }
  }
}
