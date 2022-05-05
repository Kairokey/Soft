
import 'package:flutter_test/flutter_test.dart';
import 'package:online_shop/UnitTest/Counter_class.dart';

void main()
{
  group("check if all methods on counter works",() {
    final Counter obj = Counter();
    test("check if  increment works", () {
      obj.increment();
      expect(obj.counter, 1);
    });
    test("check if  decrement works", () {
      obj.decrement();
      expect(obj.counter,0);
    });
  }
  );
}
