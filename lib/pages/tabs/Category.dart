import 'package:flutter/material.dart';
import 'package:supermall/model/category_detail_entity.dart';
import 'package:supermall/model/category_item_entity.dart';
import 'package:supermall/model/category_list_entity.dart';
import 'package:supermall/service/category-request.dart';
import 'package:supermall/utils/FitSize.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({Key? key}) : super(key: key);

  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  int _selectIndex = 0;
  int maitKey = 3627;
  int miniWallkey = 10062603;
  String type = 'pop';
  List<CategoryListEntity> categorise = [];
  List<CategoryItemEntity> categoryItem = [];
  final List<CategoryDetailEntity> categoryDetail = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    CategoryRequest.requestCategoryList().then((res) {
      setState(() {
        categorise.addAll(res);
      });
    });
    CategoryRequest.requestCategoryItem(maitKey).then((res) {
      setState(() {
        categoryItem.addAll(res);
      });
    });
    CategoryRequest.requestCategoryDetail(miniWallkey, type).then((res){
      setState(() {
        categoryDetail.addAll(res);
      });
    });
  }

  Widget _leftViewList() {
    return ListView.builder(
      itemCount: categorise.length,
      itemBuilder: (context, index) {
        return Column(
          children: <Widget>[
            InkWell(
              onTap: () {
                setState(() {
                  _selectIndex = index;
                  maitKey = int.parse(categorise[index].maitKey);
                  miniWallkey = int.parse(categorise[index].miniWallkey);
                  type = "pop";
                });
                CategoryRequest.requestCategoryItem(maitKey)
                    .then((res) {
                  setState(() {
                    categoryItem.clear();
                    categoryItem.addAll(res);
                  });
                });
                CategoryRequest.requestCategoryDetail(miniWallkey, type).then((res){
                  setState(() {
                    categoryDetail.clear();
                    categoryDetail.addAll(res);
                  });
                });
              },
              child: Container(
                width: double.infinity,
                height: SizeFit.setPx(50),
                child: Center(child: Text(categorise[index].title)),
                color: _selectIndex == index
                    ? Colors.pinkAccent
                    : Colors.white,
              ),
            ),
            const Divider(
              height: 2,
            )
          ],
        );
      },
    );
  }

  Widget _rightView() {
    return CustomScrollView(
      slivers: [
        _rightViewList(),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Container(
              height: SizeFit.setPx(50),
              child: _Tabbar(),
            ),
          ),
        ),
        _rightViewListButton(),
      ],
    );
  }

  Widget _Tabbar() {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          bottom: TabBar(
            unselectedLabelColor: Colors.black,
            indicatorColor: Colors.pinkAccent,
            labelColor: Colors.pinkAccent,
            onTap: (index) {
              if (index == 0) {
                setState(() {
                  type = 'pop';
                });
                CategoryRequest.requestCategoryDetail(miniWallkey, type).then((res){
                  setState(() {
                    categoryDetail.clear();
                    categoryDetail.addAll(res);
                  });
                });
              } else if (index == 1) {
                setState(() {
                  type = 'sell';
                });
                CategoryRequest.requestCategoryDetail(miniWallkey, type).then((res){
                  setState(() {
                    categoryDetail.clear();
                    categoryDetail.addAll(res);
                  });
                });
              } else if (index == 2) {
                setState(() {
                  type = 'new';
                });
                CategoryRequest.requestCategoryDetail(miniWallkey, type).then((res){
                  setState(() {
                    categoryDetail.clear();
                    categoryDetail.addAll(res);
                  });
                });
              }
            },
            tabs: const [
              Tab(
                text: "流行",
              ),
              Tab(
                text: "热门",
              ),
              Tab(
                text: "新品",
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _rightViewList() {
    return SliverGrid(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.1 / 1.5,
        crossAxisSpacing: 10,
      ),
      // itemCount: categoryItem.length,
        delegate: SliverChildBuilderDelegate ((context, index) {
            return SizedBox(
              width: double.infinity,
              child: Wrap(
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 1.47 / 1.5,
                    child: ClipRRect(
                        borderRadius:
                        const BorderRadius.all(Radius.circular(20)),
                        child: Image.network(categoryItem[index].image,
                            fit: BoxFit.fill)),
                  ),
                  Container(
                    height: 10,
                  ),
                  SizedBox(
                    height: SizeFit.setPx(18),
                    child: Center(child: Text(categoryItem[index].title)),
                  )
                ],
              ),
            );
          },
          childCount: categoryItem.length,
        )

    );
  }

  Widget _rightViewListButton() {
    return SliverGrid(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.1 / 1.8,
          crossAxisSpacing: 10,
        ),
        // itemCount: categoryItem.length,
        delegate: SliverChildBuilderDelegate ((context, index) {
          return GestureDetector(
            onTap: () async {
              Navigator.pushNamed(context, '/productinfo',arguments: {
                "pid":categoryDetail[index].iid
              });
            },
            child: SizedBox(
              width: double.infinity,
              child: Wrap(
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 1.47 / 1.6,
                    child: ClipRRect(
                        borderRadius:
                        const BorderRadius.all(Radius.circular(0)),
                        child: Image.network(categoryDetail[index].img,
                            fit: BoxFit.fill)),
                  ),
                  Container(
                    height: 10,
                  ),
                 Column(
                   children: [
                     SizedBox(
                       height: SizeFit.setPx(18),
                       child: Text(categoryDetail[index].title),
                     ),
                     Container(
                       height: 10,
                     ),
                     Row(
                       mainAxisAlignment:  MainAxisAlignment.spaceBetween,
                       children: [
                         Text(
                           "¥${categoryDetail[index].price}",
                           style: const TextStyle(color: Colors.red, fontSize: 16),
                         ),
                         Text("¥${categoryDetail[index].orgPrice}",
                             style: const TextStyle(
                                 color: Colors.black54,
                                 fontSize: 14,
                                 decoration: TextDecoration.lineThrough)),
                       ],
                     ),
                     Container(
                       height: 10,
                     ),
                   ],

                 )
                ],
              ),
            ),
          );
        },
          childCount: categoryDetail.length,
        )

    );
  }



  @override
  Widget build(BuildContext context) {
    SizeFit.initialize(context);
    double leftWidth = SizeFit.setPx(100);

    return Scaffold(
      appBar: AppBar(
        title: const Text("分类"),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
      ),
      body: Row(
        children: <Widget>[
          Container(
            width: leftWidth,
            height: double.infinity,
            child: _leftViewList(),
          ),
          Expanded(
            flex: 1,
            child: Container(
                padding: const EdgeInsets.all(10),
                height: double.infinity,
                color: const Color.fromRGBO(240, 246, 246, 0.9),
                child:_rightView()),
          )
        ],
      ),
    );
  }
}
