import 'dart:convert';

import 'package:supermall/generated/json/base/json_field.dart';
import 'package:supermall/generated/json/recommend_item_entity.g.dart';

@JsonSerializable()
class RecommendItemEntity {

	late List<RecommendItemList> list;
  
  RecommendItemEntity();

  factory RecommendItemEntity.fromJson(Map<String, dynamic> json) => $RecommendItemEntityFromJson(json);

  Map<String, dynamic> toJson() => $RecommendItemEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }

}

@JsonSerializable()
class RecommendItemList {

	late String image;
	late String link;
	late String acm;
	late int sort;
	late String title;
  
  RecommendItemList();

  factory RecommendItemList.fromJson(Map<String, dynamic> json) => $RecommendItemListFromJson(json);

  Map<String, dynamic> toJson() => $RecommendItemListToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}