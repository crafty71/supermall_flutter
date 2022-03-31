import 'package:card_swiper/card_swiper.dart';
import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:supermall/model/product_info_entity.dart';
import 'package:supermall/model/product_info_recommend_entity.dart';
import 'package:supermall/service/product_info_request.dart';
import 'package:supermall/utils/FitSize.dart';


class ProductInfoPage extends StatefulWidget {
  final Map arguments;
  const ProductInfoPage({Key? key, required this.arguments}) : super(key: key);

  @override
  _ProductInfoPageState createState() =>
      _ProductInfoPageState(arguments: arguments);
}

class _ProductInfoPageState extends State<ProductInfoPage>   {
  final ScrollController _scrollController = ScrollController();
  Map arguments;
  final List<ProductInfoResult> productInfo = [];
  List<ProductInfoResultItemInfo> itemInfo = [];
  late List topImage = [];
  String iid = '';
  String productInfoTitle = '';
  String lowPrice = '';
  String highPrice = '';
  String lowNowPrice = '';
  String highNowPrice = '';
  String discountDesc = '';
  List columns = [];
  List services = [];
  List shopInfo = [];
  String shopLogo = '';
  String shopName = '';
  String cSells = '';
  String cGoods = '';
  List score = [];
  List detailImage = [];
  List itemParamsRule = [];
  List itemParamsSet = [];
  List rateList = [];
  List<ProductInfoRecommendEntity> goodItem = [];


  _ProductInfoPageState({required this.arguments});


  void _scrollToend() {

    _scrollController.animateTo(0,
        duration: const Duration(milliseconds: 1000), curve: Curves.linear);
  }




  @override
  void initState() {
    super.initState();
    setState(() {
      iid = arguments["pid"];
    });
    prodoctInfoRequest.requestProdoctInfo(iid).then((value) {
      setState(() {
        productInfo.addAll(value);
        for (var item in productInfo) {
          setState(() {
            itemInfo.add(item.itemInfo);
            columns.addAll(item.columns);
            services.addAll(item.shopInfo.services);
            shopLogo = item.shopInfo.shopLogo;
            shopName = item.shopInfo.name;
            cSells = "${item.shopInfo.cSells}";
            cGoods = "${item.shopInfo.cGoods}";
            score.addAll(item.shopInfo.score);
            itemParamsRule.addAll(item.itemParams.rule.tables[0]);
            itemParamsSet.add(item.itemParams.info.xSet);
            rateList.addAll(item.rate.list);

            for (var item in item.detailInfo.detailImage) {
              detailImage.addAll(item.list);
            }
          });
        }
        for (var item in itemInfo) {
          setState(() {
            topImage = (item.topImages);
            productInfoTitle = item.title;
            lowPrice = item.lowPrice;
            highPrice = item.highPrice;
            lowNowPrice = item.lowNowPrice;
            highNowPrice = item.highNowPrice;
            discountDesc = item.discountDesc;
          });
        }
      });
    });
    prodoctInfoRequest.requestProductRecommend().then((value){
      setState(() {
        goodItem.addAll(value);
      });
    });
  }

  List<Widget> _getList() {
    return columns.map((value) {
      return Text(
        value,
        style: const TextStyle(color: Colors.black45),
      );
    }).toList();
  }

  List<Widget> _services() {
    return services.map((value) {
      return Wrap(
        children: [
          // Image.network("http:${value.icon}", width: 14, height: 14, ),
          // Icon(Icons.volunteer_activism),
          SizedBox(
            width: SizeFit.setPx(5),
          ),
          Text(
            "${value.name}",
            style: const TextStyle(color: Colors.black),
          ),
        ],
      );
    }).toList();
  }

  List<Widget> _scoreRate() {
    return score.map((item) {
      return Container(
        padding: const EdgeInsets.only(bottom: 5),
        child: Row(
          children: [
            Text(item.name),
            const SizedBox(
              width: 10,
            ),
            Text(
              "${item.score}",
              style: const TextStyle(color: Colors.green),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              color: item.isBetter == true ? Colors.green : Colors.red,
              padding: const EdgeInsets.fromLTRB(4, 1, 4, 2),
              child: Text(
                item.isBetter == true ? "高" : "低",
                style: const TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      );
    }).toList();
  }

  List<Widget> _product() {
    return detailImage.map((item) {
      return Container(
          padding: const EdgeInsets.only(bottom: 10),
          child: Image.network(
            "http:$item",
          ));
    }).toList();
  }

// .toList().cast<Widget>() 很关键
  List<Widget> _tableSell(item) {
    return item
        .map((value) {
          return Container(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: Text(
              "$value",
              textAlign: TextAlign.center,
            ),
          );
        })
        .toList()
        .cast<Widget>();
  }

  List<TableRow> _tableRow() {
    return itemParamsRule
        .map((item) {
          return TableRow(children: _tableSell(item));
        })
        .toList()
        .cast<TableRow>();
  }


  Widget _swiperWidget() {
    // height: 392
    return AspectRatio(
      aspectRatio: 1 / 1,
      child: Swiper(
          itemCount: topImage.length,
          pagination: const SwiperPagination(),
          autoplay: true,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              child: Image.network(
                "http:${topImage[index]}",
                fit: BoxFit.fill,
              ),
            );
          }),
    );
  }

  Widget _priceWidget() {
    return Column(
      children: [
        Text(productInfoTitle),
        const SizedBox(
          width: 20,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '￥$lowNowPrice~',
                style: const TextStyle(
                  color: Colors.pinkAccent,
                  fontSize: 18,
                ),
              ),
              Text(
                "￥$highNowPrice",
                style: const TextStyle(
                  color: Colors.pinkAccent,
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Text("¥$lowPrice~",
                  style: const TextStyle(
                      color: Colors.black54,
                      fontSize: 12,
                      decoration: TextDecoration.lineThrough)),
              Text("¥$highPrice",
                  style: const TextStyle(
                      color: Colors.black54,
                      fontSize: 12,
                      decoration: TextDecoration.lineThrough)),
              const SizedBox(
                width: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.pinkAccent,
                  borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                  border: Border.all(width: 1, color: Colors.red),
                ),
                child: Text(
                  discountDesc,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 20, 0, 10),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: _getList()),
        ),
        const Divider(
          height: 16,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: _services()),
        ),
        const Divider(
          height: 16,
          thickness: 5,
          color: Colors.black12,
        ),
      ],
    );
  }

  Widget _shopWidget() {
    return SizedBox(
      height: 160,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: SizedBox(
              height: 50,
              child: Row(
                children: [
                  // Image.network(
                  //   "http:$shopLogo",
                  //   height: 20,
                  // ),
                  CircleAvatar(
                    backgroundImage: NetworkImage("http:$shopLogo",),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(shopName),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              verticalDirection: VerticalDirection.down,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  verticalDirection: VerticalDirection.down,
                  children: [
                    Column(
                      children: [
                        Text(
                          cSells,
                          style: const TextStyle(fontSize: 18),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(0, 10, 0, 20),
                          child: Text(
                            "总销量",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Column(
                      children: [
                        Text(
                          cGoods,
                          style: const TextStyle(fontSize: 18),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(0, 10, 0, 20),
                          child: Text(
                            "全部宝贝",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Container(
                  height: 90,
                  width: 1,
                  color: Colors.black45,
                ),
                SizedBox(
                  height: 90,
                  child: Column(children: _scoreRate()),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _productShow() {
    return Wrap(children: _product());
  }

  Widget _shopInformation() {
    return Table(
        border: const TableBorder(
          horizontalInside: BorderSide(color: Colors.black12),
          // verticalInside: BorderSide(color: Colors.red),
        ),
        children: _tableRow());
  }

  List<Wrap> _itemParamsSet() {
    return itemParamsSet.map((item) {
      return Wrap(children: _itemParamsSetValue(item));
    }).toList();
  }

  List<Widget> _itemParamsSetValue(item) {
    return item
        .map((value) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(value.key),
                    const SizedBox(
                      width: 20,
                    ),
                    LimitedBox(
                      maxWidth: SizeFit.setPx(300),
                      child: Text(
                        value.value,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 2,
                thickness: 1,
              ),
            ],
          );
        })
        .toList()
        .cast<Widget>();
  }

  List<Widget> _userRate() {
    return [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text("用户评价"),
          ),
          TextButton(
            onPressed: () {},
            child: const Text("更多"),
          )
        ],
      ),
      const Divider(
        height: 2,
        thickness: 2,
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: _userRateInformation(),
        ),
      )
    ];
  }

  List<Widget> _userRateInformation() {
    return rateList.map((item) {
      return Column(children: [
        Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage("http:${item.user.avatar}"),
            ),
            const SizedBox(
              width: 20,
            ),
            Text("${item.user.uname}"),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Column(
          children: [
            Text("${item.content}"),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(formatDate(DateTime(item.created),
                    [mm, '-', dd, ' ', HH, ':', nn, ':', ss])),
                const SizedBox(
                  width: 20,
                ),
                Text("${item.style}"),
              ],
            )
          ],
        )
      ]);
    }).toList();
  }

  Widget _recProductListWidget() {
    double itemWidth = SizeFit.setPx(182);
    return Wrap(
      runSpacing: SizeFit.setPx(10),
      spacing: SizeFit.setPx(10),
      children: goodItem.map((value) {
        return GestureDetector(
          // onTap: () async {
          //   Navigator.pushNamed(context, '/productinfo',arguments: {
          //     "pid":value.itemId
          //   });
          // },
          child: Container(
            padding:  EdgeInsets.all(SizeFit.setPx(10)),
            width: itemWidth,
            decoration: BoxDecoration(
                border: Border.all(
                    color: const Color.fromRGBO(233, 233, 233, 0.9), width: 1)),
            child: Column(
              children: <Widget>[
                SizedBox(
                  width: double.infinity,
                  child: AspectRatio(
                    //防止服务器返回的图片大小不一致导致高度不一致问题
                    aspectRatio: 1 / 1,
                    child: Image.network(
                      value.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: SizeFit.setPx(10)),
                  child: Text(
                    value.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(color: Colors.black54),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: SizeFit.setPx(10)),
                  child: Stack(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "¥${value.discountPrice}",
                          style: const TextStyle(color: Colors.red, fontSize: 16),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text("¥${value.price}",
                            style: const TextStyle(
                                color: Colors.black54,
                                fontSize: 14,
                                decoration: TextDecoration.lineThrough)),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    SizeFit.initialize(context);
    return Scaffold(
        appBar: AppBar(
          title: const Text("详情"),
          centerTitle: true,
          backgroundColor: Colors.pink,
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.pink,
          child: const Icon(Icons.upload_rounded),
          onPressed: () {
            _scrollToend();
          },
        ),

        body: ListView(
          //  参数信息 393+1
          controller: _scrollController,
          children: [
            const SizedBox(
              height: 1,
            ), // 1
            Container(
              child: _swiperWidget(),
            ),// 393
            Container(margin: const EdgeInsets.all(8), child: _priceWidget()),// 596
            Container(
              child: _shopWidget(),
            ),// 783
            Divider(
              height: SizeFit.setPx(16),
              thickness: 4,
            ),
            Column(
              children: [Text(productInfoTitle)],
            ),
            SizedBox(
              height: SizeFit.setPx(20),
            ),
            Column(
              children: const [Text("穿着效果")],
            ),
            SizedBox(
              height: SizeFit.setPx(20),
            ),// 895
            Container(
              child: _productShow(),
            ),// 535
            SizedBox(
              height: SizeFit.setPx(20),
            ),
            Container(
              padding: EdgeInsets.only(left: SizeFit.setPx(10)),
              child: const Text("参数信息"),
            ),
            SizedBox(
              height: SizeFit.setPx(20),
            ),
            Container(
              child: _shopInformation(),
            ),
            Column(
              children: _itemParamsSet(),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(
                height: 4,
                thickness: 4,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: _userRate(),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 20, 0, 20),
              child: const Text("为您推荐", style: TextStyle(
                fontSize: 22
              ),),
            ),
            _recProductListWidget()
          ],
        ));
  }
}
