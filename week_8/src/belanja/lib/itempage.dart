import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';


class ItemPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;
    final name = itemArgs.name;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '$name'
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(30), bottomLeft: Radius.circular(30)),
            child: Hero(
              tag: 'image${itemArgs.name}',
              child: Image(
                image: NetworkImage(itemArgs.foto.toString()),
                fit: BoxFit.cover,
                height: 250.0,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 40, left: 20),
            child: Text(
              'Rp ${itemArgs.price.toString()}',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, left: 20),
            child: Text(
              '${itemArgs.name}',
              style: TextStyle(
                fontSize: 28,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, left: 20),
            child: Row(
              children: <Widget> [
                for(int i = 1; i<= 5; i++) 
                ...[
                  Icon(
                    Icons.star,
                    color: i <= itemArgs.rating ? Color.fromARGB(255, 60, 168, 94) : Color.fromARGB(255, 190, 190, 190),
                    size: 20.0,
                  ),
                ],
                Padding(
                  padding: const EdgeInsets.only(left: 180),
                  child: Text(
                    'Stok : ${itemArgs.stok.toString()}',
                    style: TextStyle(fontSize: 20.0),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}