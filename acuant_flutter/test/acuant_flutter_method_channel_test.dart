// import 'package:flutter/services.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:acuant_flutter/acuant_flutter_method_channel.dart';

// void main() {
//   MethodChannelAcuantFlutter platform = MethodChannelAcuantFlutter();
//   const MethodChannel channel = MethodChannel('acuant_flutter');

//   TestWidgetsFlutterBinding.ensureInitialized();

//   setUp(() {
//     channel.setMockMethodCallHandler((MethodCall methodCall) async {
//       return '42';
//     });
//   });

//   tearDown(() {
//     channel.setMockMethodCallHandler(null);
//   });

//   test('getPlatformVersion', () async {
//     expect(await platform.getPlatformVersion(), '42');
//   });
// }
