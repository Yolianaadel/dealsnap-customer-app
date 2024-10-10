import 'package:dealsnap_customer_app/core/localizations/generated/l10n.dart';
import 'package:dealsnap_customer_app/views/extensions/build-context.extension.dart';
import 'package:dealsnap_customer_app/views/ui/app.ui.dart';
import 'package:flutter/material.dart';

// Page:
class WelcomePage extends StatefulWidget {
  // Constructor:
  const WelcomePage({Key? key}) : super(key: key);

  // Methods:
  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

// State:
class _WelcomePageState extends State<WelcomePage> {
  // Fields:
  // Constructor:
  // Methods:
  // Build:
  @override
  Widget build(BuildContext context) {
    // Returning:
    return Scaffold(
      backgroundColor: AppUI.colorBackground,
    );
  }
}
