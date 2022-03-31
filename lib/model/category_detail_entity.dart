import 'dart:convert';
import 'package:supermall/generated/json/base/json_field.dart';
import 'package:supermall/generated/json/category_detail_entity.g.dart';

@JsonSerializable()
class CategoryDetailEntity {

	late String tradeItemId;
	late String img;
	late String iid;
	late String clientUrl;
	late String link;
	late String itemMarks;
	late String acm;
	late String title;
	late int type;
	late String cparam;
	late double orgPrice;
	late List<String> props;
	late bool hasSimilarity;
	late String sale;
	late String cfav;
	late double price;
	late CategoryDetailShopDsr shopDsr;
	late String similarityUrl;
	late String shopSeller;
  
  CategoryDetailEntity();

  factory CategoryDetailEntity.fromJson(Map<String, dynamic> json) => $CategoryDetailEntityFromJson(json);

  Map<String, dynamic> toJson() => $CategoryDetailEntityToJson(this);

	@override
  String toString() {
    return 'CategoryDetailEntity{tradeItemId: $tradeItemId, img: $img, iid: $iid, clientUrl: $clientUrl, link: $link, itemMarks: $itemMarks, acm: $acm, title: $title, type: $type,  orgPrice: $orgPrice, props: $props, hasSimilarity: $hasSimilarity, sale: $sale, cfav: $cfav, price: $price, shopDsr: $shopDsr, similarityUrl: $similarityUrl, shopSeller: $shopSeller}';
  }
}

@JsonSerializable()
class CategoryDetailShopDsr {


  
  CategoryDetailShopDsr();

  factory CategoryDetailShopDsr.fromJson(Map<String, dynamic> json) => $CategoryDetailShopDsrFromJson(json);

  Map<String, dynamic> toJson() => $CategoryDetailShopDsrToJson(this);

}