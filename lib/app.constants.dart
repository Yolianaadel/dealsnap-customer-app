import 'package:dealsnap_customer_app/models/onboarding.model.dart';

/// All of our application constants will be here.
class AppConstants {
  // Identifications:
  static const int JOB_MARKETING_ID = 1;
  static const int JOB_SALES_ID = 2;
  static const int JOB_PUBLIC_RELATIONS_ID = 3;
  static const int JOB_INFORMATION_TECHNOLOGY_ID = 4;
  static const int JOB_HUMAN_RESOURCES_ID = 5;
  static const int JOB_DESIGN_ID = 6;

  // Onboardings:
  static final onboardings = [
    // Models:
    OnBoardingModel(title: "", description3Pieces: ["", "", ""], localIconPath: ""),
    OnBoardingModel(title: "", description3Pieces: ["", "", ""], localIconPath: ""),
    OnBoardingModel(title: "", description3Pieces: ["", "", ""], localIconPath: ""),
  ];
}
