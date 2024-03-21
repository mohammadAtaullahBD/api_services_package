A useful and easy to use HTTP service.

## Features

You can send get request to a server.
You can post data to a server.
You can update data to a server.
You can send delete request to a server.

## Usage

Here is an example:
```dart
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
```
