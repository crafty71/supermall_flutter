import 'package:supermall/model/product_info_entity.dart';
import 'package:supermall/model/product_info_recommend_entity.dart';

import '../../service/http_request.dart';

class prodoctInfoRequest {
  static Future requestProdoctInfo(String iid) async {

    final url = "/detail?iid=${iid}";

    final result = await HttpRequest.request(url);

    final bannerList = result['result'];
    final List<ProductInfoResult> prodoctInfo = [];
    prodoctInfo.add(ProductInfoResult.fromJson(bannerList));
    return prodoctInfo;
  }

  static Future requestProductRecommend () async {
    const url = "/recommend";

    // ProductInfoRecommendEntity

    final result = await HttpRequest.request(url);

    final list = result["data"]["list"];
    List<ProductInfoRecommendEntity> resultList = [];
    for(var item in list) {
      resultList.add(ProductInfoRecommendEntity.fromJson(item));
    }

    return resultList;
  }
}