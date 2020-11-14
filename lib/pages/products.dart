import 'package:flutter/material.dart';
import 'package:hairoine_app/product.dart';
import 'package:hairoine_app/widgets/hairBar.dart';
import 'package:hairoine_app/services/auth.dart';


class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {


  List<Product> myProducts = [
    Product('SC1', [], 'Shampoo', Color(0xffac96db)),
    Product('CD1', [], 'Conditioner', Color(0xffac96db)),
    Product('CW1', [], 'CoWash', Color(0xffac96db)),
    Product('RB1', [], 'Rub', Color(0xffac96db)),
    Product('PL1', [], 'Peeling', Color(0xffac96db)),
  ];


  void changeColor(index) {
      myProducts[index].color =
      myProducts[index].color == Color(0xffac96db) ?
                              Colors.lightBlueAccent :
      Color(0xffac96db);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: hairBar(
        'Journey Overview',
        true,
        context,
      ),
      body: Container(
        color: Color(0xffe0f2f1),
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 20.0),
              child: Text(
                'My Products',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.normal,
                  letterSpacing: 2,
                  color: Colors.grey[800],
                  fontFamily: 'Raleway',
                ),
              ),
            ),
            Container (
              child: Expanded(
                child: ListView.builder(
                  itemCount: myProducts.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: ListTile(
                          onTap: () {
                            setState(() {
                              changeColor(index);
                            });
                          },
                          title: Text(myProducts[index].name),
                          leading: CircleAvatar(
                            backgroundColor: myProducts[index].color
                          ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Colors.teal,
      ),
    );
  }
}
