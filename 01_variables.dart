// 变量 https://dart.cn/guides/language/language-tour#variables
void variables() {
  var name = 'Bob';
  Object name1 = 'Bob';
  String name2 = 'Bob';
}

// 默认值 https://dart.cn/guides/language/language-tour#default-value
void default_value() {
  int? lineCount;
  assert(lineCount == null);
  print(lineCount);
}

// Late variables https://dart.cn/guides/language/language-tour#late-variables
void last_variables() {
  late String description;
  description = 'Feijoada!';
  print(description);
}

// Final 和 Const https://dart.cn/guides/language/language-tour#final-and-const
void final_and_const() {
  final name = 'Bob';
  final String nickname = 'Bobby';
  // The final variable 'name' can only be set once.
  // name = 'Alice';
  print(name);
}

void main() {
  default_value();
  last_variables();
  final_and_const();
}
