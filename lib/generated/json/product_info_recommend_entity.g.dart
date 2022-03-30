import 'package:supermall/generated/json/base/json_convert_content.dart';
import 'package:supermall/model/product_info_recommend_entity.dart';

ProductInfoRecommendEntity $ProductInfoRecommendEntityFromJson(Map<String, dynamic> json) {
	final ProductInfoRecommendEntity productInfoRecommendEntity = ProductInfoRecommendEntity();
	final int? tradeItemId = jsonConvert.convert<int>(json['tradeItemId']);
	if (tradeItemId != null) {
		productInfoRecommendEntity.tradeItemId = tradeItemId;
	}
	final String? image = jsonConvert.convert<String>(json['image']);
	if (image != null) {
		productInfoRecommendEntity.image = image;
	}
	final String? itemId = jsonConvert.convert<String>(json['item_id']);
	if (itemId != null) {
		productInfoRecommendEntity.itemId = itemId;
	}
	final int? itemLikes = jsonConvert.convert<int>(json['itemLikes']);
	if (itemLikes != null) {
		productInfoRecommendEntity.itemLikes = itemLikes;
	}
	final String? discountPrice = jsonConvert.convert<String>(json['discountPrice']);
	if (discountPrice != null) {
		productInfoRecommendEntity.discountPrice = discountPrice;
	}
	final int? discount = jsonConvert.convert<int>(json['discount']);
	if (discount != null) {
		productInfoRecommendEntity.discount = discount;
	}
	final String? acm = jsonConvert.convert<String>(json['acm']);
	if (acm != null) {
		productInfoRecommendEntity.acm = acm;
	}
	final String? title = jsonConvert.convert<String>(json['title']);
	if (title != null) {
		productInfoRecommendEntity.title = title;
	}
	final int? isShelf = jsonConvert.convert<int>(json['isShelf']);
	if (isShelf != null) {
		productInfoRecommendEntity.isShelf = isShelf;
	}
	final String? shopId = jsonConvert.convert<String>(json['shop_id']);
	if (shopId != null) {
		productInfoRecommendEntity.shopId = shopId;
	}
	final int? itemSale = jsonConvert.convert<int>(json['itemSale']);
	if (itemSale != null) {
		productInfoRecommendEntity.itemSale = itemSale;
	}
	final String? price = jsonConvert.convert<String>(json['price']);
	if (price != null) {
		productInfoRecommendEntity.price = price;
	}
	final int? cfav = jsonConvert.convert<int>(json['cfav']);
	if (cfav != null) {
		productInfoRecommendEntity.cfav = cfav;
	}
	final String? itemUrl = jsonConvert.convert<String>(json['item_url']);
	if (itemUrl != null) {
		productInfoRecommendEntity.itemUrl = itemUrl;
	}
	final String? itemH5Url = jsonConvert.convert<String>(json['item_h5_url']);
	if (itemH5Url != null) {
		productInfoRecommendEntity.itemH5Url = itemH5Url;
	}
	return productInfoRecommendEntity;
}

Map<String, dynamic> $ProductInfoRecommendEntityToJson(ProductInfoRecommendEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['tradeItemId'] = entity.tradeItemId;
	data['image'] = entity.image;
	data['item_id'] = entity.itemId;
	data['itemLikes'] = entity.itemLikes;
	data['discountPrice'] = entity.discountPrice;
	data['discount'] = entity.discount;
	data['acm'] = entity.acm;
	data['title'] = entity.title;
	data['isShelf'] = entity.isShelf;
	data['shop_id'] = entity.shopId;
	data['itemSale'] = entity.itemSale;
	data['price'] = entity.price;
	data['cfav'] = entity.cfav;
	data['item_url'] = entity.itemUrl;
	data['item_h5_url'] = entity.itemH5Url;
	return data;
}