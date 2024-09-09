import 'package:vyuh_cli/src/commands/create/commands/flutter_app/index.dart';
import 'package:vyuh_cli/src/commands/create/templates/index.dart';

class CreateFlutterApp extends FlutterAppSubCommand with OrgName {
  CreateFlutterApp({
    required super.logger,
    required super.generatorFromBundle,
    required super.generatorFromBrick,
  }) {
    argParser.addOption(
      'application-id',
      help: 'The bundle identifier on iOS or application id on Android. '
          '(defaults to <org-name>.<project-name>)',
    );
  }

  @override
  String get name => 'flutter_app';

  @override
  String get description => 'A Vyuh Flutter project created by Vyuh CLI.';

  @override
  Map<String, dynamic> getTemplateVars() {
    final vars = super.getTemplateVars();

    final applicationId = argResults['application-id'] as String?;
    if (applicationId != null) {
      vars['application_id'] = applicationId;
    }

    return vars;
  }

  @override
  Template get template => VyuhFlutterAppTemplate();
}
