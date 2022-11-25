import 'dart:io';
import 'dart:async';



//文件和目录（https://dart.cn/guides/libraries/library-tour#files-and-directories）
void fad() async {
  print('\n');
  print('=' * 40);
  print('文件和目录');
  print('=' * 40);
  //文本形式读取
  var config = File('config.txt');

  // Put the whole file in a single string.
  var stringContents = await config.readAsString();
  print('The file is ${stringContents.length} characters long.');

  // Put each line of the file into its own string.
  var lines = await config.readAsLines();
  print('The file is ${lines.length} lines long.');

  //二进制读取

  var contents = await config.readAsBytes();
  print('The file is ${contents.length} bytes long.');

  //处理错误

  try {
    var contents = await config.readAsString();
    print(contents);
  } catch (e) {
    print(e);
  }
  //写入
  var logFile = File('log.txt');
  var sink = logFile.openWrite();
  sink.write('FILE ACCESSED ${DateTime.now()}\n');
  await sink.flush();
  await sink.close();
}

//服务器与HTTP（https://dart.cn/guides/libraries/library-tour#http-clients-and-servers）
void cs() async {
  print('\n');
  print('=' * 40);
  print('HTTP 客户端和服务器');
  print('=' * 40);
}

//输入输出（https://dart.cn/guides/libraries/library-tour#dartio）
void main() {
  fad();
  cs();
}