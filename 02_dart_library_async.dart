// 异步编程 (https://dart.cn/guides/libraries/library-tour#dartasync---asynchronous-programming)
import 'dart:async';

Future<String> createOrderMessage() async {
  var order = await fetchUserOrder();
  return 'Your order is: $order';
}

Future<String> fetchUserOrder() =>
    // Imagine that this function is
    // more complex and slow.
    Future.delayed(
      const Duration(seconds: 2),
      () => 'Large Latte',
    );

Future<void> main() async {
  print('\n');
  print('#' * 40);
  print('异步编程');
  print('#' * 40);
  print('Fetching user order...');
  print(await createOrderMessage());
}
