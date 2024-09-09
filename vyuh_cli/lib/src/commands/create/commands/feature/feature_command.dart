import 'package:vyuh_cli/src/commands/create/commands/feature/index.dart';
import 'package:vyuh_cli/src/commands/create/templates/index.dart';

class CreateFeatureCommand extends FeatureSubCommand {
  CreateFeatureCommand({
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
