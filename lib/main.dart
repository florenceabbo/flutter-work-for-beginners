import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ProductDetailsPage(title: 'Product Details1'),
    );
  }
}

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 139, 2, 9),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 191, 61, 5),
          titleTextStyle:
              const TextStyle(color: Color.fromARGB(255, 229, 225, 224), fontWeight: FontWeight.bold),
          title: Text(title),
        ),
        body: ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
            children: <Widget>[
            
              Product(
                  name: "Supper HpLaptop",
                  description:
                      "Its a very fast speed laptop of 8GBs",
                  price: "UGX: 1.5million",
                  image: "Laptop.png")
            ]));
  }
}

class Product extends StatelessWidget {
  const Product(
      {Key? key,
      required this.name,
      required this.description,
      required this.price,
      required this.image})
      : super(key: key);

  final String name;
  final String description;
  final String price;
  final String image;

  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(44),
        height: 350,
        child: Card(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Image.asset("assets/images/" + this.image, width: 190,),
                Expanded(
                  child: Container(
                  
                      // padding: EdgeInsets.all(),
                      child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: <Widget>[
                    Text("Name: " + this.name,
                        style: TextStyle(fontWeight: FontWeight.bold,height:5 , color: Color.fromARGB(255, 1, 64, 123))),
                    Text("Desription: " + this.description,
                    style: TextStyle(fontSize: 15),),
                    Text("Price: " + this.price.toString()),
                  ])),
                )
              ]),
        ));
  }
}