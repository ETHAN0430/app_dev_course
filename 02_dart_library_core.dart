//print to the console(https://dart.cn/guides/libraries/library-tour#printing-to-the-console)
void ptc() {
  print('\n');
  print('#' * 40);
  print('字符串');
  print('#' * 40);

  //输出
  var anObject = 'string interpolation';
  print(anObject);
  var tea = 'coffe';
  print('I drink $tea.');
}

//数字(https://dart.cn/guides/libraries/library-tour#numbers)
void numbers() {
  //转换
  assert(int.parse('42') == 42);
  assert(int.parse('0x42') == 66);
  assert(double.parse('0.50') == 0.5);
}

//字符和正则表达式（https://dart.cn/guides/libraries/library-tour#strings-and-regular-expressions）
void sare() {
  print('\n');
  print('#' * 40);
  print('字符和正则表达式');
  print('#' * 40);

  //在字符中搜索
  // Check whether a string contains another string.
  print('搜索结果：');
  print('Never odd or even'.contains('odd'));

  // Does a string start with another string?
  assert('Never odd or even'.startsWith('Never'));

  // Does a string end with another string?
  assert('Never odd or even'.endsWith('even'));

  // Find the location of a string inside a string.
  assert('Never odd or even'.indexOf('odd') == 6);

  //正则表达式
  // Here's a regular expression for one or more digits.
  var numbers = RegExp(r'\d+');

  var allCharacters = 'llamas live fifteen to twenty years';
  var someDigits = 'llamas live 15 to 20 years';

  // contains() can use a regular expression.
  assert(!allCharacters.contains(numbers));
  assert(someDigits.contains(numbers));

  // Replace every match with another string.
  var exedOut = someDigits.replaceAll(numbers, 'XX');
  assert(exedOut == 'llamas live XX to XX years');
  print(exedOut);
}

//集合（https://dart.cn/guides/libraries/library-tour#collections）
void collects() {
  print('\n');
  print('#' * 40);
  print('集合');
  print('#' * 40);

  //list
  // Create an empty list of strings.
  var grains = <String>[];
  assert(grains.isEmpty);

// Create a list using a list literal.
  var fruits = ['apples', 'oranges'];

// Add to a list.
  fruits.add('kiwis');

// Add multiple items to a list.
  fruits.addAll(['grapes', 'bananas']);

// Get the list length.
  assert(fruits.length == 5);

// Remove a single item.
  var appleIndex = fruits.indexOf('apples');
  fruits.removeAt(appleIndex);
  assert(fruits.length == 4);

// Remove all elements from a list.
  fruits.clear();
  assert(fruits.isEmpty);

// You can also create a List using one of the constructors.
  var vegetables = List.filled(99, 'broccoli');
  assert(vegetables.every((v) => v == 'broccoli'));

//使用 indexOf() 方法查找一个对象在 list 中的下标值。

  var fruits1 = ['apples', 'oranges'];

// Access a list item by index.
  assert(fruits[0] == 'apples');

// Find an item in a list.
  assert(fruits.indexOf('apples') == 0);
//使用 sort() 方法排序一个 list 。你可以提供一个排序函数用于比较两个对象。比较函数在 小于 时返回 \ <0，相等 时返回 0，bigger 时返回 > 0 。下面示例中使用 compareTo() 函数，该函数在 Comparable 中定义，并被 String 类实现。

  var fruits2 = ['bananas', 'apples', 'oranges'];

// Sort a list.
  fruits.sort((a, b) => a.compareTo(b));
  assert(fruits[0] == 'apples');

//set
// Create an empty set of strings.
  var ingredients = <String>{};

// Add new items to it.
  ingredients.addAll(['gold', 'titanium', 'xenon']);
  assert(ingredients.length == 3);

// Adding a duplicate item has no effect.
  ingredients.add('gold');
  assert(ingredients.length == 3);

// Remove an item from a set.
  ingredients.remove('gold');
  assert(ingredients.length == 2);

// You can also create sets using
// one of the constructors.
  var atomicNumbers = Set.from([79, 22, 54]);

//map
// Maps often use strings as keys.
  var hawaiianBeaches = {
    'Oahu': ['Waikiki', 'Kailua', 'Waimanalo'],
    'Big Island': ['Wailea Bay', 'Pololu Beach'],
    'Kauai': ['Hanalei', 'Poipu']
  };

// Maps can be built from a constructor.
  var searchTerms = Map();

// Maps are parameterized types; you can specify what
// types the key and value should be.
  var nobleGases = Map<int, String>();

//公共集合
  var coffees = <String>[];
  var teas = ['green', 'black', 'chamomile', 'earl grey'];
  assert(coffees.isEmpty);
  assert(teas.isNotEmpty);
  print(teas);

  for (final char in 'hola'.split('')) {
    print(char);
  }
}

//URIs（https://dart.cn/guides/libraries/library-tour#uris）
void uris() {
  print('\n');
  print('#' * 40);
  print('URI');
  print('#' * 40);
  var uri = 'https://example.org/api?foo=some message';

  var encoded = Uri.encodeFull(uri);
  assert(encoded == 'https://example.org/api?foo=some%20message');

  var decoded = Uri.decodeFull(encoded);
  assert(uri == decoded);

  var uri1 = Uri(
      scheme: 'https', host: 'example.org', path: '/foo/bar', fragment: 'frag');
  assert(uri.toString() == 'https://example.org/foo/bar#frag');

  print(uri);
}

//日期和时间(https://dart.cn/guides/libraries/library-tour#dates-and-times)
void dat() {
  print('\n');
  print('#' * 40);
  print('时间和日期');
  print('#' * 40);
  // Get the current date and time.
  var now = DateTime.now();

// Create a new DateTime with the local time zone.
  var y2k = DateTime(2000); // January 1, 2000

// Specify the month and day.
  y2k = DateTime(2000, 1, 2); // January 2, 2000

// Specify the date as a UTC time.
  y2k = DateTime.utc(2000); // 1/1/2000, UTC

// Specify a date and time in ms since the Unix epoch.
  y2k = DateTime.fromMillisecondsSinceEpoch(946684800000, isUtc: true);

// Parse an ISO 8601 date.
  y2k = DateTime.parse('2000-01-01T00:00:00Z');
  print(y2k);
}

// 工具类 （https://dart.cn/guides/libraries/library-tour#utility-classes）
class Line implements Comparable<Line> {
  final int length;
  const Line(this.length);

  @override
  int compareTo(Line other) => length - other.length;
}

void uc() {
  print('\n');
  print('#' * 40);
  print('工具类');
  print('#' * 40);

  var short = const Line(1);
  var long = const Line(100);
  print('长度比较结果：');
  print(short.compareTo(long) < 0);
}

// 异常 (https://dart.cn/guides/libraries/library-tour#exceptions)
class FooException implements Exception {
  final String? msg;

  const FooException([this.msg]);

  @override
  String toString() => msg ?? 'FooException';
}

void excepts() {
  print('\n');
  print('#' * 40);
  print('异常');
  print('#' * 40);
}

void main() {
  ptc();
  numbers();
  sare();
  collects();
  uris();
  dat();
  uc();
  excepts();
}
