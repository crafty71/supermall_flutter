import 'package:supermall/model/product_info_entity.dart';

import '../../service/http_request.dart';

class prodoctInfoRequest {
  static Future requestProdoctInfo(String iid) async {

    final URL = "/detail?iid=${iid}";

    final result = await HttpRequest.request(URL);

    final bannerList = result['result'];
    final List<ProductInfoResult> prodoctInfo = [];
    prodoctInfo.add(ProductInfoResult.fromJson(bannerList));
    return prodoctInfo;
  }
}