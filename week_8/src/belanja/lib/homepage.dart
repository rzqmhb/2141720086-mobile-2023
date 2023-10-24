import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  final List<Item> items = [
    Item(
      name: 'Gula', 
      price: 15000, 
      foto: 'https://cdn.britannica.com/47/192347-131-62E67449/types-sugar-brown.jpg', 
      stok: 90, 
      rating: 3
    ),
    Item(
      name: 'Uyah', 
      price: 3000, 
      foto: 'https://cdn1-production-images-kly.akamaized.net/ac3jELqw9vk6gRcsrK-VokTLpoE=/1200x675/smart/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/4214710/original/019361800_1667548137-sea_salt.jpg', 
      stok: 45, 
      rating: 4
    ),
    Item(
      name: 'Endog', 
      price: 25000, 
      foto: 'https://cdn.britannica.com/94/151894-050-F72A5317/Brown-eggs.jpg', 
      stok: 15, 
      rating: 4
    ),
    Item(
      name: 'Beras', 
      price: 14000, 
      foto: 'https://cdn1-production-images-kly.akamaized.net/ReexFJ7DYNq7EjB6fKY-_JAS0tg=/1200x900/smart/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/4021819/original/011012800_1652430132-grain-that-is-cup-wooden-floor.jpg', 
      stok: 135, 
      rating: 5
    ),
    Item(
      name: 'Minyak', 
      price: 15000, 
      foto: 'https://static.toiimg.com/photo/88165334.cms', 
      stok: 45, 
      rating: 3
    ),
    Item(
      name: 'Kecap', 
      price: 13000, 
      foto: 'https://assets-pergikuliner.com/uploads/bootsy/image/19029/Kecap_Manis__grid.id_.jpg', 
      stok: 33, 
      rating: 4
    ),
    Item(
      name: 'Mie', 
      price: 3000, 
      foto: 'https://cdn.idntimes.com/content-images/community/2021/11/fromandroid-41f1175fb470020ff7937f394f57148a_600x400.jpg', 
      stok: 85, 
      rating: 5
    ),
  ];
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Toko Kelontong'),
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 1,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10),
          padding: EdgeInsets.all(1),
          itemCount: items.length,
          itemBuilder: ((context, index) {
            final item = items[index];
            return InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/item', arguments: item);
              },
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.15),
                ),
                child: Container(
                  margin: EdgeInsets.all(1),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
                        child: Hero(
                          tag: 'image${item.name}',
                          child: Image(
                            image: NetworkImage(item.foto.toString()),
                            fit: BoxFit.cover,
                            height: 100.0,
                            width: 200.0,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget> [
                            for(int i = 1; i<= 5; i++) 
                            ...[
                              Icon(
                                Icons.star,
                                color: i <= item.rating ? Color.fromARGB(255, 60, 168, 94) : Color.fromARGB(255, 190, 190, 190),
                                size: 15.0,
                              ),
                            ]
                          ],
                        ),
                      ),
                      Expanded(child: Text(item.name)),
                      Expanded(
                        child: Text(
                          ('Rp ' + item.price.toString()),
                          textAlign: TextAlign.center,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}

