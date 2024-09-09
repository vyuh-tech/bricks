## vyuh_cli
A command-line interface for the Vyuh Framework to generate Vyuh projects from predefined templates.

## Documentation 📝

For official documentation, please visit https://docs.vyuh.tech/

## Quick Start 🚀


### Installing 🧑‍💻

```sh
dart pub global activate vyuh
```

Or install a [specific version](https://pub.dev/packages/vyuh_cli/versions) using:

```sh
dart pub global activate vyuh <version>
```

If you haven't already, you might need to [set up your path][path_setup_link].

When that is not possible (eg: CI environments), run `vyuh` commands via:

```sh
dart pub global run vyuh_cli:vyuh <command> <args>
```

## Usage

```sh
# Create a new Vyuh project
$ vyuh create flutter_app supper_app

# Add feature to existing Vyuh project
$ vyuh_cli create feature auth

# Add Sanity feature to existing Vyuh project
$ vyuh_cli create sanity-feature auth

# Show CLI version
$ vyuh_cli --version

# Show usage help
$ vyuh_cli --help
```


