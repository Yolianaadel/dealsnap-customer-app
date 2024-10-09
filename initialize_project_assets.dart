// ignore_for_file: avoid_print
import "dart:io";

/// This is the starter point of our script, it's responsible for initializing our project files.
Future<void> main() async {
  // Initializing:
  await initializeAssetsGeneration(
    // Paths: to fetch and generate.
    assetsPath: "assets",
    assetsGeneratedFilePath: "lib/views/assets",
    assetsTypesToBeIncluded: "svg, jpg, jpeg, png",
  );
}

/// Initialize: project assets, to fetch all the assets and create the required file.
Future<void> initializeAssetsGeneration({
  // Params:
  required String assetsPath,
  required String assetsGeneratedFilePath,
  required String assetsTypesToBeIncluded,
}) async {
  // Initializing:
  final directory = Directory(assetsPath);
  final files = directory.listSync(recursive: true);
  final List<String> code = [];
  // Preparing:
  code.add("/// This is an auto generated file by custom script, do not edit it.\n");
  code.add("/// It'll be responsible for managing app assets.\n");
  code.add("class AppAssets {\n\n");
  code.add("\t// Assets:\n");
  // Listing:
  for (var file in files) {
    // Initializing:
    var nameSplit = file.path.split(".");
    var extension = nameSplit[nameSplit.length - 1];
    // Checking:
    if (assetsTypesToBeIncluded.contains(extension)) {
      // Initializing:
      final split = nameSplit[0].split("\\");
      final variableName = toCamelCase(split[split.length - 1]);
      // Appending:
      code.add("\tstatic const String $variableName = \"${file.path.replaceAll("\\", "/")}\";\n");
    }
  }
  // Closing:
  code.add("}");
  // Writing: all this assets to app assets file.
  final appAssetsFile = File("$assetsGeneratedFilePath/app.assets.dart");
  // Writing:
  await appAssetsFile.writeAsString(code.join(''));
  // Logging:
  print("Completed successfully");
}

String toCamelCase(String text) {
  // Split the text by underscores
  List<String> words = text.split('_');
  // Capitalize the first letter of each word except the first one
  for (int i = 1; i < words.length; i++) {
    words[i] = words[i].substring(0, 1).toUpperCase() + words[i].substring(1);
  }
  // Join the words back together
  return words.join('');
}
