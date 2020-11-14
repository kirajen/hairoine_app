import 'package:flutter/material.dart';
import 'package:hairoine_app/product.dart';

class Hairoine extends StatefulWidget {
  @override
  _HairoineState createState() => _HairoineState();
}

class _HairoineState extends State<Hairoine> {

  String porosity = 'Medium';
  List<Product> products = [Product('A', [], 'B', Colors.pink), Product('C', [], 'D', Colors.pink), Product('E', [], 'F', Colors.pink),];

  Widget productTemplate(product) {
    return Card(
        margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
        child: Column(
          children: [
            Text(
                product.type,
                style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.grey[800],
                )),
            SizedBox(height: 6.0),
            Text(
                product.name,
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey[600],
                )),
          ],
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'The Hairoine\'s Card',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'Raleway',
          ),),
        centerTitle: true,
        backgroundColor: Colors.teal ,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            porosity = porosity == 'Medium' ? 'Low' : 'Medium';
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.teal,
      ),
      body: Container(
        color: Color(0xffe0f2f1),
        padding: EdgeInsets.all(20.0),
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Center(
                  child: Text(
                    'Name',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.normal,
                      letterSpacing: 2,
                      color: Colors.grey[800],
                      fontFamily: 'Raleway',

                    ),),
                ),
                Center(
                  child: Text(
                    'Age',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.normal,
                      letterSpacing: 2,
                      color: Colors.grey[800],
                      fontFamily: 'Raleway',

                    ),),
                ),
                Icon(
                  Icons.blur_on,
                  semanticLabel: '$porosity',
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.ac_unit),
                    color: Color(0xffcb6364)
                ),
              ],
            ),
            Column(
              children: products.map((product) => productTemplate(product)).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
