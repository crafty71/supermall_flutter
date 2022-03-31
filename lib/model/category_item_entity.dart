
import 'package:supermall/generated/json/base/json_field.dart';
import 'package:supermall/generated/json/category_item_entity.g.dart';

@JsonSerializable()
class CategoryItemEntity {

	late String image;
	late String link;
	late String acm;
	late String title;
  
  CategoryItemEntity();

  factory CategoryItemEntity.fromJson(Map<String, dynamic> json) => $CategoryItemEntityFromJson(json);

  Map<String, dynamic> toJson() => $CategoryItemEntityToJson(this);

  @override
  String toString() {
    return 'CategoryItemEntity{image: $image, link: $link, acm: $acm, title: $title}';
  }
}