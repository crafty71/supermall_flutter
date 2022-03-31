import 'package:supermall/generated/json/base/json_convert_content.dart';
import 'package:supermall/model/category_item_entity.dart';

CategoryItemEntity $CategoryItemEntityFromJson(Map<String, dynamic> json) {
	final CategoryItemEntity categoryItemEntity = CategoryItemEntity();
	final String? image = jsonConvert.convert<String>(json['image']);
	if (image != null) {
		categoryItemEntity.image = image;
	}
	final String? link = jsonConvert.convert<String>(json['link']);
	if (link != null) {
		categoryItemEntity.link = link;
	}
	final String? acm = jsonConvert.convert<String>(json['acm']);
	if (acm != null) {
		categoryItemEntity.acm = acm;
	}
	final String? title = jsonConvert.convert<String>(json['title']);
	if (title != null) {
		categoryItemEntity.title = title;
	}
	return categoryItemEntity;
}

Map<String, dynamic> $CategoryItemEntityToJson(CategoryItemEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['image'] = entity.image;
	data['link'] = entity.link;
	data['acm'] = entity.acm;
	data['title'] = entity.title;
	return data;
}