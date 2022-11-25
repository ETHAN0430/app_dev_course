import 'dart:math';


// 数学和随机数 （https://dart.cn/guides/libraries/library-tour#dartmath---math-and-random）
void math_and_random() {
  print('\n');
  print('=' * 40);
  print('Math and Random');
  print('=' * 40);

  // Cosine
  assert(cos(pi) == -1.0);

// Sine
  var degrees = 30;
  var radians = degrees * (pi / 180);
// radians is now 0.52359.
  var sinOf30degrees = sin(radians);
// sin 30° = 0.5
  assert((sinOf30degrees - 0.5).abs() < 0.01);

  assert(max(1, 1000) == 1000);
  assert(min(1, -1000) == -1000);

  // See the Math library for additional constants.
  print(e); // 2.718281828459045
  print(pi); // 3.141592653589793
  print(sqrt2); // 1.4142135623730951

  var random = Random();
  var value1 = random.nextDouble(); // Between 0.0 and 1.0: [0, 1)
  print('nextDouble: $value1');
  var value2 = random.nextInt(10); // Between 0 and 9.
  print('nextInt: $value2');
  var value3 = random.nextBool(); // true or false
  print('nextBool: $value3');
}

void main() {
  math_and_random();
}