

import 'package:supermall/model/category_detail_entity.dart';
import 'package:supermall/model/category_item_entity.dart';
import 'package:supermall/model/category_list_entity.dart';

import '../../service/http_request.dart';

class CategoryRequest {
  static Future requestCategoryList() async {

    const url = "/category";

    final result = await HttpRequest.request(url);
    final categorisation = result["data"]["category"]["list"];
    List<CategoryListEntity> categorise = [];
    for(var item in categorisation) {
      categorise.add(CategoryListEntity.fromJson(item));
    }
    return categorise;
  }

  static Future requestCategoryItem(int maitKey) async {

    const url = "/subcategory";
    final params = {'maitKey': maitKey };
    final result = await HttpRequest.request(url, params: params);
    final listlessly = result["data"]["list"];
    List<CategoryItemEntity> categoryItem = [];
    for(var item in listlessly){
      categoryItem.add(CategoryItemEntity.fromJson(item));
    }

    return categoryItem;
  }

  static Future requestCategoryDetail (int miniWallkey, String type) async {
    const url = "/subcategory/detail";
    final params = {'miniWallkey': miniWallkey, 'type': type};
    final result = await HttpRequest.request(url, params: params);
    final List<CategoryDetailEntity> categoryDetail = [];
    for(var item in result){
      categoryDetail.add(CategoryDetailEntity.fromJson(item));
    }
    return categoryDetail;
  }
}