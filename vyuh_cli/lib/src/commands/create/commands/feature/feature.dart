import 'package:vyuh_cli/src/commands/create/commands/feature/feature_app_subcommand.dart';
import 'package:vyuh_cli/src/commands/create/templates/templates.dart';

class CreateFeature extends FeatureSubCommand {
  CreateFeature({
    required super.logger,
    required super.generatorFromBundle,
    required super.generatorFromBrick,
  });

  @override
  String get name => 'feature';

  @override
  String get description => 'A Vyuh feature created by Vyuh CLI.';

  @override
  Template get template => VyuhFeatureTemplate();
}
