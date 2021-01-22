import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:citadel_one_test_package/citadel_one_test_package.dart';

void main() {
  const MethodChannel channel = MethodChannel('citadel_one_test_package');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await CitadelOneTestPackage.platformVersion, '42');
  });
}
