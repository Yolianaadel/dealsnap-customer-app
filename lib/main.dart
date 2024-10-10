import 'package:dealsnap_customer_app/core/localizations/generated/l10n.dart';
import 'package:dealsnap_customer_app/views/routing/app.router.dart';
import 'package:dealsnap_customer_app/views/ui/app.ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

import 'app.bindings.dart';

// Main:
void main() {
  // Start: running our application.
  runApp(const Application());
}

/// Application: the root widget of our entire app.
class Application extends StatelessWidget {
  // Constructor:
  const Application({super.key});

  // Build:
  @override
  Widget build(BuildContext context) {
    // Returning:
    return GetMaterialApp(
      title: 'Dealsnap',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppUI.colorPrimary),
        useMaterial3: true,
        fontFamily: GoogleFonts.poppins().fontFamily,
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialBinding: AppBindings(),
      initialRoute: AppRouter.welcomePage,
      supportedLocales: const [Locale('en')],
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
    );
  }
}
