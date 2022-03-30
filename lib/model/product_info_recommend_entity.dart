import 'dart:convert';
import 'package:supermall/generated/json/base/json_field.dart';
import 'package:supermall/generated/json/product_info_recommend_entity.g.dart';

@JsonSerializable()
class ProductInfoRecommendEntity {
  late int tradeItemId;
  late String image;
  @JSONField(name: "item_id")
  late String itemId;
  late int itemLikes;
  late String discountPrice;
  late int discount;
  late String acm;
  late String title;
  late int isShelf;
  @JSONField(name: "shop_id")
  late String shopId;
  late int itemSale;
  late String price;
  late int cfav;
  @JSONField(name: "item_url")
  late String itemUrl;
  @JSONField(name: "item_h5_url")
  late String itemH5Url;

  ProductInfoRecommendEntity();

  factory ProductInfoRecommendEntity.fromJson(Map<String, dynamic> json) =>
      $ProductInfoRecommendEntityFromJson(json);

  Map<String, dynamic> toJson() => $ProductInfoRecommendEntityToJson(this);

	@override
  String toString() {
    return 'tradeItemId: $tradeItemId, image: $image, itemId: $itemId, itemLikes: $itemLikes, discountPrice: $discountPrice, discount: $discount, acm: $acm, title: $title, isShelf: $isShelf, shopId: $shopId, itemSale: $itemSale, price: $price, cfav: $cfav, itemUrl: $itemUrl, itemH5Url: $itemH5Url';
  }
}
