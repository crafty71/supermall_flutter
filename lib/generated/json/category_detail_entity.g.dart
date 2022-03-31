import 'package:supermall/generated/json/base/json_convert_content.dart';
import 'package:supermall/model/category_detail_entity.dart';

CategoryDetailEntity $CategoryDetailEntityFromJson(Map<String, dynamic> json) {
	final CategoryDetailEntity categoryDetailEntity = CategoryDetailEntity();
	final String? tradeItemId = jsonConvert.convert<String>(json['tradeItemId']);
	if (tradeItemId != null) {
		categoryDetailEntity.tradeItemId = tradeItemId;
	}
	final String? img = jsonConvert.convert<String>(json['img']);
	if (img != null) {
		categoryDetailEntity.img = img;
	}
	final String? iid = jsonConvert.convert<String>(json['iid']);
	if (iid != null) {
		categoryDetailEntity.iid = iid;
	}
	final String? clientUrl = jsonConvert.convert<String>(json['clientUrl']);
	if (clientUrl != null) {
		categoryDetailEntity.clientUrl = clientUrl;
	}
	final String? link = jsonConvert.convert<String>(json['link']);
	if (link != null) {
		categoryDetailEntity.link = link;
	}
	final String? itemMarks = jsonConvert.convert<String>(json['itemMarks']);
	if (itemMarks != null) {
		categoryDetailEntity.itemMarks = itemMarks;
	}
	final String? acm = jsonConvert.convert<String>(json['acm']);
	if (acm != null) {
		categoryDetailEntity.acm = acm;
	}
	final String? title = jsonConvert.convert<String>(json['title']);
	if (title != null) {
		categoryDetailEntity.title = title;
	}
	final int? type = jsonConvert.convert<int>(json['type']);
	if (type != null) {
		categoryDetailEntity.type = type;
	}
	final String? cparam = jsonConvert.convert<String>(json['cparam']);
	if (cparam != null) {
		categoryDetailEntity.cparam = cparam;
	}
	final double? orgPrice = jsonConvert.convert<double>(json['orgPrice']);
	if (orgPrice != null) {
		categoryDetailEntity.orgPrice = orgPrice;
	}
	final List<String>? props = jsonConvert.convertListNotNull<String>(json['props']);
	if (props != null) {
		categoryDetailEntity.props = props;
	}
	final bool? hasSimilarity = jsonConvert.convert<bool>(json['hasSimilarity']);
	if (hasSimilarity != null) {
		categoryDetailEntity.hasSimilarity = hasSimilarity;
	}
	final String? sale = jsonConvert.convert<String>(json['sale']);
	if (sale != null) {
		categoryDetailEntity.sale = sale;
	}
	final String? cfav = jsonConvert.convert<String>(json['cfav']);
	if (cfav != null) {
		categoryDetailEntity.cfav = cfav;
	}
	final double? price = jsonConvert.convert<double>(json['price']);
	if (price != null) {
		categoryDetailEntity.price = price;
	}
	final CategoryDetailShopDsr? shopDsr = jsonConvert.convert<CategoryDetailShopDsr>(json['shopDsr']);
	if (shopDsr != null) {
		categoryDetailEntity.shopDsr = shopDsr;
	}
	final String? similarityUrl = jsonConvert.convert<String>(json['similarityUrl']);
	if (similarityUrl != null) {
		categoryDetailEntity.similarityUrl = similarityUrl;
	}
	final String? shopSeller = jsonConvert.convert<String>(json['shopSeller']);
	if (shopSeller != null) {
		categoryDetailEntity.shopSeller = shopSeller;
	}
	return categoryDetailEntity;
}

Map<String, dynamic> $CategoryDetailEntityToJson(CategoryDetailEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['tradeItemId'] = entity.tradeItemId;
	data['img'] = entity.img;
	data['iid'] = entity.iid;
	data['clientUrl'] = entity.clientUrl;
	data['link'] = entity.link;
	data['itemMarks'] = entity.itemMarks;
	data['acm'] = entity.acm;
	data['title'] = entity.title;
	data['type'] = entity.type;
	data['cparam'] = entity.cparam;
	data['orgPrice'] = entity.orgPrice;
	data['props'] =  entity.props;
	data['hasSimilarity'] = entity.hasSimilarity;
	data['sale'] = entity.sale;
	data['cfav'] = entity.cfav;
	data['price'] = entity.price;
	data['shopDsr'] = entity.shopDsr.toJson();
	data['similarityUrl'] = entity.similarityUrl;
	data['shopSeller'] = entity.shopSeller;
	return data;
}

CategoryDetailShopDsr $CategoryDetailShopDsrFromJson(Map<String, dynamic> json) {
	final CategoryDetailShopDsr categoryDetailShopDsr = CategoryDetailShopDsr();
	return categoryDetailShopDsr;
}

Map<String, dynamic> $CategoryDetailShopDsrToJson(CategoryDetailShopDsr entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	return data;
}