import 'dart:io';

import 'package:mason/mason.dart';
import 'package:vyuh_cli/src/commands/create/templates/index.dart';
import 'package:vyuh_cli/src/commands/create/utils/utils.dart';

class VyuhFlutterAppTemplate extends Template {
  VyuhFlutterAppTemplate()
      : super(
          name: 'app',
          bundle: vyuhInitBundle,
          help: 'Generate a Vyuh Flutter application.',
        );

  @override
  Future<void> onGenerateComplete(Logger logger, Directory outputDir) async {
    templateSummary(
      logger: logger,
      outputDir: outputDir,
      message: 'Created a Vyuh App! 🚀',
    );
  }
}
