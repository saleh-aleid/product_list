import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ProductScreen(),
    );
  }
}

class ProductScreen extends StatelessWidget {
  var _product = ['iPhone 10', 'iPhone 11', 'Sumsung Note', 'Sumsung Note 20'];
  var _price = ['10', ' 11', '12', '13'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product'),
      ),
      body: ListView.separated(
        itemCount: _product.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              child: Placeholder(),
            ),
            title: Text(_product[index]),
            subtitle: Text('Price ${_price[index]}'),
            trailing: Icon(Icons.shopping_cart),
          );
        },
        separatorBuilder: (context, index) => Divider(),
      ),
    );
  }
}
