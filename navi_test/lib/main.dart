import 'package:flutter/material.dart';
/*
class Product {
  final String title;
  final String description;

  Product(this.title, this.description);
}

void main() {
  runApp(MaterialApp(
    title: "路由传值",
    home: ProductList(
      products: List.generate(20, (i) => Product('商品 $i', '商品详情,编号$i')),
    ),
  ));
}

class ProductList extends StatelessWidget {
  final List<Product> products;

  ProductList({Key key, @required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('商品列表'),
      ),
      body: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(products[index].title),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context)=>ProductDetail(product: products[index])
                ),
                );
              },
            );
          }),
    );
  }
}


class ProductDetail extends StatelessWidget {

  final Product product;

  ProductDetail({Key key, @required this.product}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.title),
      ),
      body: Center(
        child: Text(product.description),
      ),
    );
  }
}
*/

/* 本地图片
void main() =>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlue,
      child: Image.asset('images/1.jpeg'),
    );
  }
}

* */
void main() {
  runApp(MaterialApp(
    title: '页面跳转返回数据',
    home: FirstPage(),
  ));
}




    
class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Frist'),
        backgroundColor: Colors.lightBlue,
      ),
      body: Center(
        child: RouteButton(),
      ),
    );
  }
}

class RouteButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text('GOGOGO'),
      onPressed: () {
        _navigateToNext(context);
      },
    );
  }

  _navigateToNext(BuildContext context) async {
    final result = await Navigator.push(
        context, MaterialPageRoute(builder: (context) => GoodPage()));
    Scaffold.of(context).showSnackBar(SnackBar(content: Text('$result')));
  }
}

class GoodPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('GoodPage'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text('苹果1'),
              onPressed: () {
                Navigator.pop(context, '苹果1: 1111100----');
              },
            ),
            RaisedButton(
              child: Text('苹果2'),
              onPressed: () {
                Navigator.pop(context, '苹果2: 1222200----');
              },
            ),
            RaisedButton(
              child: Text('苹果3'),
              onPressed: () {
                Navigator.pop(context, '苹果3: 133300----');
              },
            ),
          ],
        ),
      ),
    );
  }
}
