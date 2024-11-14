//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/painting.dart';
//import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

            body: SingleChildScrollView(
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // Weather section
                Container(
                  padding: const EdgeInsets.all(20),
                  color: Colors.blue[100],
                  width: double.infinity,
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Today's Weather",
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Sunny, 25°C',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),

                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text(
                        'Suggested Outfits',
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 20),
                      OutfitCard(
                        outfitName: 'Simple Outfit',
                        description: 'Crop-top, Jeans, Shoes',
                        image: const AssetImage('images/vchome3.jpg'),

                      ),
                      const SizedBox(height: 10),
                      OutfitCard(
                        outfitName: 'Casual Outfit',
                        description: 'T-shirt, Jeans,  Sneakers',
                        image: const AssetImage('images/vchome2.jpg'),

                      ),
                      const SizedBox(height: 10),
                      OutfitCard(
                        outfitName: ' Overalls Outfit',
                        description: ' Jean Overalls, Tank top, Loafers',
                        image: const AssetImage('images/vchome1.jpg'),


                      ),
                      const SizedBox(height: 10),
                      OutfitCard(
                        outfitName: 'Summer Dress Outfit',
                        description: 'Floral Dress, Sandals',
                        image: const AssetImage('images/vchome4.jpg'),


                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text(
                        'Suggested Items',
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 20),
                      OutfitCard(
                        outfitName: 'Short Sleeved Button-up',
                        description: 'Light blue, Collared, Striped',
                        image: const AssetImage('images/vcloth1.jpg'),

                      ),
                      const SizedBox(height: 10),
                      OutfitCard(
                        outfitName: 'Denim shorts',
                        description: 'Dark blue, Denim, Mini',
                        image: const AssetImage('images/vcloth2.jpg'),

                      ),
                      const SizedBox(height: 10),
                      OutfitCard(
                        outfitName: ' Halter neck top',
                        description: ' Green, Halter neck, Casual',
                        image: const AssetImage('images/vcloth3.jpg'),


                      ),
                      const SizedBox(height: 10),
                      OutfitCard(
                        outfitName: 'Flared Denim Jeans ',
                        description: 'Denim, Low waisted, Star detail',
                        image: const AssetImage('images/vcloth6.jpg'),

                      ),
                      OutfitCard(
                        outfitName: 'Tiered Maxi Skirt',
                        description: 'White, Tiered, Maxi ',
                        image: const AssetImage('images/vcloth7.jpg'),


                      ),
                    ],
                  ),
                ),
              ],
            ),
        ));
  }
}

class OutfitCard extends StatelessWidget {
  final String outfitName;
  final String description;
  final ImageProvider image;

  OutfitCard({
    required this.outfitName,
    required this.description,
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
                Text(
                  description,
                 style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
          ],

            ));
  }
}
