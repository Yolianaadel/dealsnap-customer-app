// ignore_for_file: avoid_print
import "dart:io";

/// This is the starter point of our script, it's responsible for initializing our project files.
void main() {
  // Initializing:
  initializeAsMVCProject();
}

/// Initialize: project files on MVC architecture.
void initializeAsMVCProject() {
  // Initializing:
  final String projectLibDirectoryPath = "${Directory.current.path}/lib";
  final directoriesToBeCreated = [
    // MVC: project directories.
    "$projectLibDirectoryPath/views",
    "$projectLibDirectoryPath/views/pages",
    "$projectLibDirectoryPath/views/widgets",
    "$projectLibDirectoryPath/views/routing",
    "$projectLibDirectoryPath/views/assets",
    "$projectLibDirectoryPath/views/extensions",
    "$projectLibDirectoryPath/views/sheets",
    "$projectLibDirectoryPath/views/dialogs",
    "$projectLibDirectoryPath/models",
    "$projectLibDirectoryPath/controllers",
    "$projectLibDirectoryPath/core/injections",
    "$projectLibDirectoryPath/core/services",
  ];
  // Get: each directory.
  for (var directoryPath in directoriesToBeCreated) {
    // Initializing: using our dir path.
    final directory = Directory(directoryPath);
    // Checking: if it's not exists.
    if (!directory.existsSync()) {
      // Creating:
      directory.createSync(recursive: true);
      print("Directory created: $directoryPath");
    } else {
      // Logging:
      print("Directory already exists: $directoryPath");
    }
  }
  // Logging:
  print("------------------------------");
  print("Completed.");
}
