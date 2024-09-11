import 'package:vyuh_cli/src/commands/create/commands/schema/index.dart';
import 'package:vyuh_cli/src/commands/create/templates/index.dart';

class CreateSchemaCommand extends FeatureSanitySchemaSubCommand {
  CreateSchemaCommand({
    required super.logger,
    required super.generatorFromBundle,
    required super.generatorFromBrick,
  });

  @override
  String get name => 'schema';

  @override
  String get description => 'A Vyuh feature CMS schema created by Vyuh CLI.';

  @override
  Template get template => FeatureSanitySchemaTemplate();
}
