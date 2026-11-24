# Contributing to flutter_ex_kit

Thank you for your interest in improving `flutter_ex_kit`! Contributions from the community are welcome.

## Ways to Contribute

- **Reporting Bugs:** If you discover a bug, please check existing issues before opening a new issue with steps to reproduce, environment details, and sample code.
- **Suggesting Features:** Ideas for new extensions or utilities are welcome. Please open an issue to discuss before starting work.
- **Submitting Pull Requests:** Enhancements and bug fixes are appreciated.

## Development Setup

1. Fork the repository and clone it locally:
   ```bash
   git clone https://github.com/iamapuneet/flutter_ex_kit.git
   cd flutter_ex_kit
   ```

2. Fetch dependencies:
   ```bash
   flutter pub get
   ```

3. Ensure code adheres to Flutter conventions and formatting:
   ```bash
   dart format .
   flutter analyze
   ```

4. Run tests:
   ```bash
   flutter test
   ```

## Pull Request Guidelines

- Create a feature branch with a descriptive name.
- Keep PRs focused on a single change or feature.
- Include unit tests for any new extensions or functions in the `test/` directory.
- Update `CHANGELOG.md` and `README.md` if your change adds or modifies public APIs.
- Submit your pull request to the `master` branch with a clear description of changes.
