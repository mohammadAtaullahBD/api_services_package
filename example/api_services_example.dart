import 'package:api_services/api_services.dart';

void main() {
  // Get request
  var data = ApiService.getData(url: 'https://dummyjson.com/products');
  print('Get response: $data');

  // Post request
  var res1 = ApiService.postData(
    url: 'https://dummyjson.com/products/add',
    body: {'title': 'BMW Pencil'},
  );
  print('Post response: $res1');

  // Put request
  var res2 = ApiService.updateData(
    url: 'https://dummyjson.com/products/1',
    body: {'title': 'iPhone Galaxy +1'},
  );
  print('Put response: $res2');

  // Delete request
  var res3 = ApiService.deleteData(url: 'https://dummyjson.com/products/1');
  print('Delete response: $res3');
}
