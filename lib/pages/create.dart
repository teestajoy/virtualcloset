import 'package:flutter/material.dart';

class Create extends StatefulWidget {
  const Create({super.key});

  @override
  State<Create> createState() => _CreateState();
}

class _CreateState extends State<Create> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: ListView(
        children: [
        Padding(
        padding: const EdgeInsets.all(20.0),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[

    const SizedBox(height: 20),
    CreateCard(
    outfitName: 'Create New Outfit',
    //image: const AssetImage('images/vcoutfit1.jpg'),
      icon: Icons.add,

    ),
    const SizedBox(height: 10),
      CreateCard(
    outfitName: 'Generate Random Outfit',
    //image: const AssetImage('images/vcoutfit2.jpg'),
      icon: Icons.shuffle,

    ),
    const SizedBox(height: 10),
      CreateCard(
    outfitName: ' Edit an Outfit ',
    //image: const AssetImage('images/vcoutfit3.jpg'),
      icon: Icons.edit,


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
                  'Previously Made Outfits',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                OutfitCard(
                  outfitName: 'College Outfit',
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
                  outfitName: ' Outdoors Outfit',
                  description: ' Jean Overalls, Tank top, Loafers',
                  image: const AssetImage('images/vchome1.jpg'),


                ),
                const SizedBox(height: 10),
                OutfitCard(
                  outfitName: 'Summer Outfit',
                  description: 'Floral Dress, Sandals',
                  image: const AssetImage('images/vchome4.jpg'),


                ),
              ],
            ),
          ),
    ],
    ));
  }
}
class CreateCard extends StatelessWidget {
  final String outfitName;
  //final ImageProvider image;
  final IconData icon;

  CreateCard({
    required this.outfitName,
    //required this.image,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Row(
          children: <Widget>[
            // Image(
            //   image: image,
            //   width: 100,
            //   height: 100,
            //   fit: BoxFit.cover,
            // ),
            Icon(
               icon,
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
