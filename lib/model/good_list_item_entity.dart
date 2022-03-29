import 'dart:convert';

import 'package:supermall/generated/json/base/json_field.dart';
import 'package:supermall/generated/json/good_list_item_entity.g.dart';


@JsonSerializable()
class GoodListItemEntity {

	late List<GoodListItemList> list;
  
  GoodListItemEntity();

  factory GoodListItemEntity.fromJson(Map<String, dynamic> json) => $GoodListItemEntityFromJson(json);

  Map<String, dynamic> toJson() => $GoodListItemEntityToJson(this);

	@override
  String toString() {
    return 'GoodListItemEntity{list: $list}';
  }
}

@JsonSerializable()
class GoodListItemList {

	late int itemType;
	late String ptpC;
	dynamic titleTags;
	late String clientUrl;
	late String iid;
	late GoodListItemListShowLarge showLarge;
	late String link;
	@JSONField(name: "show")
	late GoodListItemListShow xShow;
	late String itemMarks;
	late String acm;
	late int type;
	late String title;
	late String orgPrice;
	late String cparam;
	late List<String> props;
	@JSONField(name: "lefttop_taglist")
	late List<dynamic> lefttopTaglist;
	late int sale;
	late String price;
	late int cfav;
	@JSONField(name: "leftbottom_taglist")
	late List<dynamic> leftbottomTaglist;
	late int shopId;
	late int popularStar;
  
  GoodListItemList();

  factory GoodListItemList.fromJson(Map<String, dynamic> json) => $GoodListItemListFromJson(json);

  Map<String, dynamic> toJson() => $GoodListItemListToJson(this);

	@override
  String toString() {
    return 'GoodListItemList{itemType: $itemType, ptpC: $ptpC, titleTags: $titleTags, clientUrl: $clientUrl, iid: $iid, showLarge: $showLarge, link: $link, xShow: $xShow, itemMarks: $itemMarks, acm: $acm, type: $type, title: $title, orgPrice: $orgPrice, cparam: $cparam, props: $props, lefttopTaglist: $lefttopTaglist, sale: $sale, price: $price, cfav: $cfav, leftbottomTaglist: $leftbottomTaglist, shopId: $shopId, popularStar: $popularStar}';
  }
}

@JsonSerializable()
class GoodListItemListShowLarge {

	late String img;
	late int w;
	late int h;
  
  GoodListItemListShowLarge();

  factory GoodListItemListShowLarge.fromJson(Map<String, dynamic> json) => $GoodListItemListShowLargeFromJson(json);

  Map<String, dynamic> toJson() => $GoodListItemListShowLargeToJson(this);

}

@JsonSerializable()
class GoodListItemListShow {

	late String img;
	late int w;
	late int h;
  
  GoodListItemListShow();

  factory GoodListItemListShow.fromJson(Map<String, dynamic> json) => $GoodListItemListShowFromJson(json);

  Map<String, dynamic> toJson() => $GoodListItemListShowToJson(this);

}