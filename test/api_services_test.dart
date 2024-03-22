import 'package:restapi_services/restapi_services.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    setUp(() {});

    test('1st Test', () async {
      expect(
        await ApiService.getData(url: 'https://dummyjson.com/products'),
        isMap,
      );
    });
    test('2st Test', () async {
      expect(
        await ApiService.postData(
          url: 'https://dummyjson.com/products/add',
          body: {'title': 'BMW Pencil'},
        ),
        isMap,
      );
    });
    test('3st Test', () async {
      expect(
        await ApiService.updateData(
          url: 'https://dummyjson.com/products/1',
          body: {'title': 'iPhone Galaxy +1'},
        ),
        isMap,
      );
    });
    test('4st Test', () async {
      expect(
        await ApiService.deleteData(url: 'https://dummyjson.com/products/1'),
        isMap,
      );
    });
  });
}
