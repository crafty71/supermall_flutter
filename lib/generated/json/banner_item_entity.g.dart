import 'package:supermall/generated/json/base/json_convert_content.dart';
import 'package:supermall/model/banner_item_entity.dart';

BannerItemEntity $BannerItemEntityFromJson(Map<String, dynamic> json) {
	final BannerItemEntity bannerItemEntity = BannerItemEntity();
	final List<BannerItemList>? list = jsonConvert.convertListNotNull<BannerItemList>(json['list']);
	if (list != null) {
		bannerItemEntity.list = list;
	}
	return bannerItemEntity;
}

Map<String, dynamic> $BannerItemEntityToJson(BannerItemEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['list'] =  entity.list.map((v) => v.toJson()).toList();
	return data;
}

BannerItemList $BannerItemListFromJson(Map<String, dynamic> json) {
	final BannerItemList bannerItemList = BannerItemList();
	final String? image = jsonConvert.convert<String>(json['image']);
	if (image != null) {
		bannerItemList.image = image;
	}
	final int? width923 = jsonConvert.convert<int>(json['width923']);
	if (width923 != null) {
		bannerItemList.width923 = width923;
	}
	final int? height923 = jsonConvert.convert<int>(json['height923']);
	if (height923 != null) {
		bannerItemList.height923 = height923;
	}
	final String? link = jsonConvert.convert<String>(json['link']);
	if (link != null) {
		bannerItemList.link = link;
	}
	final int? width = jsonConvert.convert<int>(json['width']);
	if (width != null) {
		bannerItemList.width = width;
	}
	final String? acm = jsonConvert.convert<String>(json['acm']);
	if (acm != null) {
		bannerItemList.acm = acm;
	}
	final String? title = jsonConvert.convert<String>(json['title']);
	if (title != null) {
		bannerItemList.title = title;
	}
	final String? image923 = jsonConvert.convert<String>(json['image923']);
	if (image923 != null) {
		bannerItemList.image923 = image923;
	}
	final int? height = jsonConvert.convert<int>(json['height']);
	if (height != null) {
		bannerItemList.height = height;
	}
	return bannerItemList;
}

Map<String, dynamic> $BannerItemListToJson(BannerItemList entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['image'] = entity.image;
	data['width923'] = entity.width923;
	data['height923'] = entity.height923;
	data['link'] = entity.link;
	data['width'] = entity.width;
	data['acm'] = entity.acm;
	data['title'] = entity.title;
	data['image923'] = entity.image923;
	data['height'] = entity.height;
	return data;
}