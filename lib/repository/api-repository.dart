import 'dart:async';
import 'package:hris/utils/api-helper.dart';
import 'package:hris/utils/constant.dart';

class ApiRepository {
  ApiProvider _provider = ApiProvider();

  Future login (body) => _provider.post(Url.POST_LOGIN, body);

  // Future<chuckCategories> fetchChuckCategoryData() async {
  //   final response = await _provider.get("jokes/categories");
  //   return chuckCategories.fromJson(response);
  // }
}