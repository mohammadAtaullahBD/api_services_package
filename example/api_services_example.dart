import 'package:restapi_services/restapi_services.dart';

void main() async {
  // Get request
  var data = await ApiService.getData(url: 'https://dummyjson.com/products');
  print('Get response: $data');

  // Post request
  var res1 = await ApiService.postData(
    url: 'https://dummyjson.com/products/add',
    body: {'title': 'BMW Pencil'},
  );
  print('Post response: $res1');

  // Put request
  var res2 = await ApiService.updateData(
    url: 'https://dummyjson.com/products/1',
    body: {'title': 'iPhone Galaxy +1'},
  );
  print('Put response: $res2');

  // Delete request
  var res3 =
      await ApiService.deleteData(url: 'https://dummyjson.com/products/1');
  print('Delete response: $res3');
}
