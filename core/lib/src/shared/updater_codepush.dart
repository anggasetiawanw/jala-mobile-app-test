// ignore_for_file: slash_for_doc_comments

import 'package:shorebird_code_push/shorebird_code_push.dart';

class UpdaterCodeMagic {
  final _shorebirdCodePush = ShorebirdCodePush();
  Future<void> checkForUpdate({required Function(bool) isAvailable, required Function(bool) isReadyToRestart}) async {
    final isUpdateAvailable = await _shorebirdCodePush.isNewPatchAvailableForDownload();
    if (isUpdateAvailable) {
      isAvailable(true);
      await _shorebirdCodePush.downloadUpdateIfAvailable();
      isReadyToRestart(await _shorebirdCodePush.isNewPatchReadyToInstall());
    } else {
      isAvailable(false);
    }
  }
}
