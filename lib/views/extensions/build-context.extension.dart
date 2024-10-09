import 'package:flutter/material.dart';
import '../../core/localizations/generated/l10n.dart';

/// [BuildContextUIExtensions] to quick access user interface methods by the context.
extension BuildContextUIExtensions on BuildContext {
  // Getters:
  ThemeData get theme => Theme.of(this);

  AppLocalizations get localizations => AppLocalizations.of(this);
}
