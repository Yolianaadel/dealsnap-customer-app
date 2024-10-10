/// Endpoints: of our apis will be available here.
class AppEndpoints {
  // Endpoints:
  static const String baseEndpoint = "";

  // Authentication:
  static const String authLoginByGoogle = "";
  static const String authLoginByApple = "";

  // Brands:
  static const String brandsIndex = "$baseEndpoint/brands";
  static const String brandsCreate = "$baseEndpoint/brands";
  static const String brandsShow = "$baseEndpoint/brands";
  static const String brandsUpdate = "$baseEndpoint/brands";
  static const String brandsDelete = "$baseEndpoint/brands";

  // Deals:
  static const String dealsIndex = "$baseEndpoint/deals";
  static const String dealsCreate = "$baseEndpoint/deals";
  static const String dealsShow = "$baseEndpoint/deals";
  static const String dealsUpdate = "$baseEndpoint/deals";
  static const String dealsDelete = "$baseEndpoint/deals";

  // Deals: types
  static const String dealsTypesIndex = "$baseEndpoint/deals-types";
  static const String dealsTypesCreate = "$baseEndpoint/deals-types";
  static const String dealsTypesShow = "$baseEndpoint/deals-types";
  static const String dealsTypesUpdate = "$baseEndpoint/deals-types";
  static const String dealsTypesDelete = "$baseEndpoint/deals-types";

  // Business: types.
  static const String businessTypesIndex = "$baseEndpoint/business-types";
  static const String businessTypesCreate = "$baseEndpoint/business-types";
  static const String businessTypesShow = "$baseEndpoint/business-types";
  static const String businessTypesUpdate = "$baseEndpoint/business-types";
  static const String businessTypesDelete = "$baseEndpoint/business-types";

  // Categories: root.
  static const String categoriesRootIndex = "$baseEndpoint/categories/root";
  static const String categoriesRootCreate = "$baseEndpoint/categories/root";
  static const String categoriesRootShow = "$baseEndpoint/categories/root";
  static const String categoriesRootUpdate = "$baseEndpoint/categories/root";
  static const String categoriesRootDelete = "$baseEndpoint/categories/root";

  // Categories: sub.
  static const String categoriesSubIndex = "$baseEndpoint/categories/sub";
  static const String categoriesSubCreate = "$baseEndpoint/categories/sub";
  static const String categoriesSubShow = "$baseEndpoint/categories/sub";
  static const String categoriesSubUpdate = "$baseEndpoint/categories/sub";
  static const String categoriesSubDelete = "$baseEndpoint/categories/sub";

  // Reviews:
  static const String reviewsIndex = "$baseEndpoint/reviews";
  static const String reviewsCreate = "$baseEndpoint/reviews";
  static const String reviewsShow = "$baseEndpoint/reviews";
  static const String reviewsUpdate = "$baseEndpoint/reviews";
  static const String reviewsDelete = "$baseEndpoint/reviews";

  // Reservations:
  static const String reservationsIndex = "$baseEndpoint/reservations";
  static const String reservationsCreate = "$baseEndpoint/reservations";
  static const String reservationsShow = "$baseEndpoint/reservations";
  static const String reservationsUpdate = "$baseEndpoint/reservations";
  static const String reservationsDelete = "$baseEndpoint/reservations";

  // In: app ads.
  static const String inAppAdsIndex = "$baseEndpoint/in-app-ads";
  static const String inAppAdsCreate = "$baseEndpoint/in-app-ads";
  static const String inAppAdsShow = "$baseEndpoint/in-app-ads";
  static const String inAppAdsUpdate = "$baseEndpoint/in-app-ads";
  static const String inAppAdsDelete = "$baseEndpoint/in-app-ads";
}
