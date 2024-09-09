import 'package:vyuh_cli/src/commands/create/templates/index.dart';

import 'feature_sanity_schema_subcommand.dart';

class CreateFeatureSanitySchemaCommand extends FeatureSanitySchemaSubCommand {
  CreateFeatureSanitySchemaCommand({
    required super.logger,
    required super.generatorFromBundle,
    required super.generatorFromBrick,
  });

  @override
  String get name => 'feature-sanity-schema';

  @override
  String get description => 'A Vyuh feature Sanity schema created by Vyuh CLI.';

  @override
  Template get template => VyuhFeatureSanitySchemaTemplate();
}
