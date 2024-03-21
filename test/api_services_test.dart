import 'package:api_services/api_services.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    setUp(() {});

    test('1st Test', () {
      expect(
        ApiService.getData(url: 'https://dummyjson.com/products'),
        isMap,
      );
    });
    test('2st Test', () {
      expect(
        ApiService.postData(
          url: 'https://dummyjson.com/products/add',
          body: {'title': 'BMW Pencil'},
        ),
        isMap,
      );
    });
    test('3st Test', () {
      expect(
        ApiService.updateData(
          url: 'https://dummyjson.com/products/1',
          body: {'title': 'iPhone Galaxy +1'},
        ),
        isMap,
      );
    });
    test('4st Test', () {
      expect(
        ApiService.deleteData(url: 'https://dummyjson.com/products/1'),
        isMap,
      );
    });
  });
}
