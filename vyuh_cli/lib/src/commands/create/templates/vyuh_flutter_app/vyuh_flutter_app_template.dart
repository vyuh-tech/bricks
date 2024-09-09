import 'dart:io';

import 'package:mason/mason.dart';
import 'package:path/path.dart' as path;
import 'package:vyuh_cli/src/commands/create/templates/index.dart';
import 'package:vyuh_cli/src/logger_extension.dart';

class VyuhFlutterAppTemplate extends Template {
  VyuhFlutterAppTemplate()
      : super(
          name: 'app',
          bundle: vyuhInitBundle,
          help: 'Generate a Vyuh Flutter application.',
        );

  @override
  Future<void> onGenerateComplete(Logger logger, Directory outputDir) async {
    _logSummary(logger, outputDir);
  }

  void _logSummary(Logger logger, Directory outputDir) {
    final relativePath = path.relative(
      outputDir.path,
      from: Directory.current.path,
    );

    final projectPath = relativePath;
    final projectPathLink =
        link(uri: Uri.parse(projectPath), message: projectPath);

    final readmePath = path.join(relativePath, 'README.md');
    final readmePathLink =
        link(uri: Uri.parse(readmePath), message: readmePath);

    final details = '''
  • To get started refer to $readmePathLink
  • Your project code is in $projectPathLink
''';

    logger
      ..info('\n')
      ..created('Created a Vyuh App! 🚀')
      ..info(details)
      ..info(
        lightGray.wrap(
          '''
+----------------------------------------------------+
| Looking for more features?                         |
| We have an enterprise-grade solutions!             |
|                                                    |
| For more info visit:                               |
| https://vyuh.tech                                  |
+----------------------------------------------------+''',
        ),
      );
  }
}
