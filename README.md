# Vyuh Bricks

Bricks to scaffold a Vyuh Project, Feature or Schema.

Generate all the boring stuff so you can start with the more interesting pieces of your App Development!

To learn more, visit https://docs.vyuh.tech/intro/mason-setup

## Generate Mason Bundle from Mason Bricks

```sh
mason bundle vyuh_init -t dart -o vyuh_cli/lib/src/commands/create/templates/vyuh_flutter_app
mason bundle vyuh_feature -t dart -o vyuh_cli/lib/src/commands/create/templates/vyuh_feature
mason bundle vyuh_sanity_feature -t dart -o vyuh_cli/lib/src/commands/create/templates/vyuh_sanity_feature
```

Note: Make sure to run the above command from the root of the project if the bricks are modified.