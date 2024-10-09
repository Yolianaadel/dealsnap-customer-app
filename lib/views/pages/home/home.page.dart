import 'package:dealsnap_customer_app/views/ui/app.ui.dart';
import 'package:flutter/material.dart';

// Page:
class HomePage extends StatefulWidget {
  // Constructor:
  const HomePage({Key? key}) : super(key: key);

  // Methods:
  @override
  State<HomePage> createState() => _HomePageState();
}

// State:
class _HomePageState extends State<HomePage> {
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
