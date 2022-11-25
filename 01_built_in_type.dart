//int and double（https://dart.cn/guides/language/language-tour#numbers）
void numbers(){
  //定义整数
  var x = 1;
  var hex = 0xDEADBEEF;
  //定义浮点数
  var y = 1.1;
  var exponents = 1.42e5;
  //可以自动转换或同时有两种类型
  num x1 = 1;
  double y1=1;

  //字符串与数字之间的转换
  // String -> int
  var one = int.parse('1');
  assert(one == 1);

  // String -> double
  var onePointOne = double.parse('1.1');
  assert(onePointOne == 1.1);

  // int -> String
  String oneAsString = 1.toString();
  assert(oneAsString == '1');

  // double -> String
  String piAsString = 3.14159.toStringAsFixed(2);
  assert(piAsString == '3.14');

  //整型的位移操作
  assert((3 << 1) == 6); // 左移一位
  assert((3 | 4) == 7); // 按位或
  assert((3 & 4) == 0); // 按位与

}

//字符串（https://dart.cn/guides/language/language-tour#strings）
void strings(){

//创建字符串
  var s1 = '使用单引号创建字符串字面量。';
  var s2 = "双引号也可以用于创建字符串字面量。";
  var s3 = '使用单引号创建字符串时可以使用斜杠来转义那些与单引号冲突的字符串：\'。';
  var s4 = "而在双引号中则不需要使用转义与单引号冲突的字符串：'";

//多行字符串
  var s5 = '''
  你可以像这样创建多行字符串。
  ''';

  var s6 = """这也是一个多行字符串。""";

//字符串插值
  var s = '字符串插值';
  assert('Dart 有$s，使用起来非常方便。' == 'Dart 有字符串插值，使用起来非常方便。');
  assert('使用${s.substring(3,5)}表达式也非常方便' == '使用插值表达式也非常方便。');

//拼接字符串
  var ss1 = 'String '
    'concatenation'
    " works even over line breaks.";
  assert(ss1 ==
    'String concatenation works even over '
        'line breaks.');

  var ss2 = 'The + operator ' + 'works, as well.';
  assert(ss2 == 'The + operator works, as well.');
  
//raw字符串不会对转义字符做处理使其直接输出
  var ss3 = r'在 raw 字符串中，转义字符串 \n 会直接输出 “\n” 而不是转义为换行。';

//字符串常量

}


//布尔类型（https://dart.cn/guides/language/language-tour#booleans）
void booleans(){
  //显示检查布尔值
  // Check for an empty string.
var fullName = '';
assert(fullName.isEmpty);

// Check for zero.
var hitPoints = 0;
assert(hitPoints <= 0);

// Check for null.
var unicorn;
assert(unicorn == null);

// Check for NaN.
var iMeantToDoThis = 0 / 0;
assert(iMeantToDoThis.isNaN);
}

//数组（https://dart.cn/guides/language/language-tour#lists）
void lists(){
  var list = [1, 2, 3];
}

//(https://dart.cn/guides/language/language-tour#sets)
void sets(){
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  //set 集合创建如上

  //添加
  var elements = <String>{};
  elements.add('fluorine');
  elements.addAll(halogens);

}

//(https://dart.cn/guides/language/language-tour#maps)
void maps(){
  //用来关联 keys 和 values 的对象
  //创建
  var gifts = {
  // Key:    Value
  'first': 'partridge',
  'second': 'turtledoves',
  'fifth': 'golden rings'
  };

  var nobleGases = {
  2: 'helium',
  10: 'neon',
  18: 'argon',
  };

  //添加和取
  var gifts1 = {'first': 'partridge'};
  gifts1['fourth'] = 'calling birds'; // Add a key-value pair
  var gifts2 = {'first': 'partridge'};
  assert(gifts2['first'] == 'partridge');

}

//（https://dart.cn/guides/language/language-tour#runes-and-grapheme-clusters）
void runes_and_grapheme_clusters(){
  

  var hi = 'Hi cyf';
  print(hi);
  print('The end of the string: ${hi.substring(hi.length - 1)}');

}

void main(){
  numbers();
  strings();
  booleans();
  runes_and_grapheme_clusters();
}