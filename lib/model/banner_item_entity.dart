import 'dart:convert';

import 'package:supermall/generated/json/banner_item_entity.g.dart';
import 'package:supermall/generated/json/base/json_field.dart';


@JsonSerializable()
class BannerItemEntity {

	late List<BannerItemList> list;
  
  BannerItemEntity();

  factory BannerItemEntity.fromJson(Map<String, dynamic> json) => $BannerItemEntityFromJson(json);

  Map<String, dynamic> toJson() => $BannerItemEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class BannerItemList {

	late String image;
	late int width923;
	late int height923;
	late String link;
	late int width;
	late String acm;
	late String title;
	late String image923;
	late int height;
  
  BannerItemList();

  factory BannerItemList.fromJson(Map<String, dynamic> json) => $BannerItemListFromJson(json);

  Map<String, dynamic> toJson() => $BannerItemListToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}