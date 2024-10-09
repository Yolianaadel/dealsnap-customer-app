# Dealsnap Customer - Mobile App
Dealsnap customer mobile application, for US startup, specialized for deals and discounts offers to customers.

## Helper Commands

This all the commands you'll probably need to use all the custom scripts.

Generate app files, run this only once after creating the project for the first time
```shell
dart .\initialize_project_files.dart
```

Generate app assets, run this when adding new assets to project/assets folder in any sub directory
```shell
dart .\initialize_project_assets.dart
```

Generate localizations, run this when adding new local or message in project/lib/core/localizations/l10n/*
```shell
dart pub global run intl_utils:generate
```