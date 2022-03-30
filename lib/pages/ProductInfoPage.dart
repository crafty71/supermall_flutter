import 'package:card_swiper/card_swiper.dart';
import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:supermall/model/product_info_entity.dart';
import 'package:supermall/model/product_info_recommend_entity.dart';
import 'package:supermall/service/product_info_request.dart';
import 'package:supermall/utils/ScreenAdapter.dart';

class ProductInfoPage extends StatefulWidget {
  final Map arguments;
  const ProductInfoPage({Key? key, required this.arguments}) : super(key: key);

  @override
  _ProductInfoPageState createState() =>
      _ProductInfoPageState(arguments: this.arguments);
}

class _ProductInfoPageState extends State<ProductInfoPage> with SingleTickerProviderStateMixin  {
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
  List Services = [];
  List ShopInfo = [];
  String shopLogo = '';
  String shopName = '';
  String cSells = '';
  String cGoods = '';
  List score = [];
  List detailImage = [];
  List itemParamsRule = [];
  List itemParamsSet = [];
  List RateList = [];
  List<ProductInfoRecommendEntity> goodItem = [];
  int _currentIndex = 0;
  late TabController _tabController;

  _ProductInfoPageState({required this.arguments});


  void _scrollToend() {

    _scrollController.animateTo(0,
        duration: const Duration(milliseconds: 1000), curve: Curves.linear);
  }

  void _scrollposition(double location){
    _scrollController.animateTo(location,
        duration: const Duration(milliseconds: 2000), curve: Curves.linear);

  }



  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 4, vsync: this);
    _tabController.addListener(() {
      print(_tabController.index);
    });
    _scrollController.addListener((){
      if( _scrollController.offset < 6564) {
        _tabController.animateTo(0);
      }else if ( 6564 < _scrollController.offset && _scrollController.offset < 7334 ){
        _tabController.animateTo(1);
      } else if ( 7334 < _scrollController.offset && _scrollController.offset < 7534 ){
        _tabController.animateTo(2);
      } else if(7334 < _scrollController.offset) {
        _tabController.animateTo(3);
      }
    });
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
            Services.addAll(item.shopInfo.services);
            shopLogo = item.shopInfo.shopLogo;
            shopName = item.shopInfo.name;
            cSells = "${item.shopInfo.cSells}";
            cGoods = "${item.shopInfo.cGoods}";
            score.addAll(item.shopInfo.score);
            itemParamsRule.addAll(item.itemParams.rule.tables[0]);
            itemParamsSet.add(item.itemParams.info.xSet);
            RateList.addAll(item.rate.list);

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

  List<Widget> _Services() {
    return Services.map((value) {
      return Wrap(
        children: [
          // Image.network("http:${value.icon}", width: 14, height: 14, ),
          // Icon(Icons.volunteer_activism),
          const SizedBox(
            width: 5,
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

  List<Widget> _Product() {
    return detailImage.map((item) {
      return Container(
          padding: const EdgeInsets.only(bottom: 10),
          child: Image.network(
            "http:${item}",
          ));
    }).toList();
  }

// .toList().cast<Widget>() 很关键
  List<Widget> _TableSell(item) {
    return item
        .map((value) {
          return Container(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: Text(
              "${value}",
              textAlign: TextAlign.center,
            ),
          );
        })
        .toList()
        .cast<Widget>();
  }

  List<TableRow> _TableRow() {
    return itemParamsRule
        .map((item) {
          return TableRow(children: _TableSell(item));
        })
        .toList()
        .cast<TableRow>();
  }

  Widget _Tabbar() {
    return DefaultTabController(
      initialIndex: _currentIndex,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          bottom: TabBar(
            controller: _tabController,
            unselectedLabelColor: Colors.black,
            indicatorColor: Colors.pink,
            labelColor: Colors.white,
            onTap: (index) {
              if(index == 0) {
                _scrollToend();
              } else if(index ==1 ) {
                _scrollposition(6565);
              } else if (index == 2) {
                _scrollposition(7335);
              } else if (index ==3) {
                _scrollposition(7535);
              }
              index == _currentIndex;
            },
            tabs: const [
              Tab(
                text: "商品",
              ),
              Tab(
                text: "参数",
              ),
              Tab(
                text: "评论",
              ),
              Tab(
                text: "推荐",
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _swiperWidget() {
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
                  "$discountDesc",
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
              children: _Services()),
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
                  Image.network(
                    "http:$shopLogo",
                    height: 20,
                    width: 20,
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
    return Wrap(children: _Product());
  }

  Widget _shopInformation() {
    return Table(
        border: const TableBorder(
          horizontalInside: BorderSide(color: Colors.black12),
          // verticalInside: BorderSide(color: Colors.red),
        ),
        children: _TableRow());
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
                      maxWidth: 300,
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

  List<Widget> _UserRate() {
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
          children: _UserRateInformation(),
        ),
      )
    ];
  }

  List<Widget> _UserRateInformation() {
    return RateList.map((item) {
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
    var itemWidth = (ScreenAdaper.getScreenWidth() - 40) / 4;
    return Wrap(
      runSpacing: 10,
      spacing: 10,
      children: goodItem.map((value) {
        return GestureDetector(
          // onTap: () async {
          //   Navigator.pushNamed(context, '/productinfo',arguments: {
          //     "pid":value.itemId
          //   });
          // },
          child: Container(
            padding: const EdgeInsets.all(10),
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
                  padding: EdgeInsets.only(top: ScreenAdaper.height(20)),
                  child: Text(
                    value.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(color: Colors.black54),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: ScreenAdaper.height(20)),
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
    ScreenAdaper.init(context);
    return Scaffold(
        appBar: AppBar(
          // title: const Text("详情"),
          centerTitle: true,
          actions: <Widget>[
            SizedBox(
              width: 330,
              child: _Tabbar(),
            )
          ],
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
          controller: _scrollController,
          children: [
            const SizedBox(
              height: 1,
            ),
            Container(
              child: _swiperWidget(),
            ),
            Container(margin: const EdgeInsets.all(8), child: _priceWidget()),
            Container(
              child: _shopWidget(),
            ),
            const Divider(
              height: 16,
              thickness: 4,
            ),
            Column(
              children: [Text(productInfoTitle)],
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: const [Text("穿着效果")],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              child: _productShow(),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.only(left: 10),
              child: const Text("参数信息"),
            ),
            const SizedBox(
              height: 20,
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
              children: _UserRate(),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 20, 0, 20),
              child: Text("为您推荐", style: TextStyle(
                fontSize: 22
              ),),
            ),
            _recProductListWidget()
          ],
        ));
  }
}
