import 'package:flutter/material.dart';

class Clothes extends StatefulWidget {
  const Clothes({super.key});

  @override
  State<Clothes> createState() => _ClothesState();
}

class _ClothesState extends State<Clothes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[

                  const SizedBox(height: 20),
                  ClothesCard(
                    outfitName: 'All Items',
                    image: const AssetImage('images/vclothes1.jpg'),

                  ),
                  const SizedBox(height: 10),
                  ClothesCard(
                    outfitName: 'T-shirts',
                    image: const AssetImage('images/vclothes2.jpg'),

                  ),
                  const SizedBox(height: 10),
                  ClothesCard(
                    outfitName: ' Pants ',
                    image: const AssetImage('images/vclothes3.jpg'),

                  ),
                  const SizedBox(height: 10),
                  ClothesCard(
                    outfitName: 'Skirts',
                    image: const AssetImage('images/vclothes4.jpg'),

                  ),
                  const SizedBox(height: 10),
                  ClothesCard(
                    outfitName: 'Tops',
                    image: const AssetImage('images/vclothes5.jpg'),

                  ),
                  const SizedBox(height: 10),
                  ClothesCard(
                    outfitName: 'Jackets',
                    image: const AssetImage('images/vclothes6.jpg'),

                  ),
                  const SizedBox(height: 10),
                  ClothesCard(
                    outfitName: 'Shorts',
                    image: const AssetImage('images/vclothes7.jpg'),

                  ),
                  const SizedBox(height: 10),
                  ClothesCard(
                    outfitName: 'Dresses',
                    image: const AssetImage('images/vclothes8.jpg'),

                  ),
                  const SizedBox(height: 10),
                  ClothesCard(
                    outfitName: 'Accessories',
                    image: const AssetImage('images/vclothes9.jpg'),

                  ),
                  const SizedBox(height: 10),
                  ClothesCard(
                    outfitName: 'Shoes',
                    image: const AssetImage('images/vclothes10.jpg'),

                  ),
                ],
              ),
            ),
          ],
        )
    );
  }
}
class ClothesCard extends StatelessWidget {
  final String outfitName;
  final ImageProvider image;

  ClothesCard({
    required this.outfitName,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Row(
          children: <Widget>[
            Image(
              image: image,
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
            const SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  outfitName,
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),

              ],
            ),
          ],

        ));
  }
}