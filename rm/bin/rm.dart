// dart compile exe bin/rm.dart
// sudo cp bin/rm.exe /usr/bin/rm
// rm [-f] path
import 'dart:io';
import 'package:args/args.dart';


void main(List<String> arguments) {
  exitCode = 0;
  final parser = ArgParser()..addFlag('force', negatable: false, abbr: 'f');

  ArgResults argResults = parser.parse(arguments);
  final paths = argResults.rest;

  rm(paths, force: argResults['force'] as bool);
}

Future<void> rm(List<String> paths, {bool force = false}) async {
  if (paths.isEmpty) {
    await stdin.pipe(stdout);
  } else {
    for (final path in paths) {
      File file = new File(path);
      try {
        var time = new DateTime.now();
        var fileName = path.split("/").last;
        if (!force) {
          // codespace await file.copy('/workspaces/app_dev_course/recycle_bin/${time}_${fileName}');
          // gitpod    await file.copy('/workspace/app_dev_course/recycle_bin/${time}_${fileName}');
          await file.copy('/workspace/app_dev_course/recycle_bin/${time}_${fileName}');
        }
        await file.delete();

      } catch(e) {
        _handleError(path);
      }
    }
  }
}

Future<void> _handleError(String path) async {
  if (!await File(path).exists()) {
    stderr.writeln('error: no such file: $path ');
    exitCode = 2;
  }
}