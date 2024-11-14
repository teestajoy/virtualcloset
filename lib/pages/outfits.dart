import 'package:flutter/material.dart';

class Outfits extends StatefulWidget {
  const Outfits({super.key});

  @override
  State<Outfits> createState() => _OutfitsState();
}

class _OutfitsState extends State<Outfits> {
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
                  OutfitsCard(
                    outfitName: 'All Outfits',
                    image: const AssetImage('images/vcoutfit1.jpg'),

                  ),
                  const SizedBox(height: 10),
                  OutfitsCard(
                    outfitName: 'College Outfits',
                    image: const AssetImage('images/vcoutfit2.jpg'),

                  ),
                  const SizedBox(height: 10),
                  OutfitsCard(
                    outfitName: ' Formal Outfits ',
                    image: const AssetImage('images/vcoutfit3.jpg'),

                  ),
                  const SizedBox(height: 10),
                  OutfitsCard(
                    outfitName: 'Summer Outfits',
                    image: const AssetImage('images/vchome4.jpg'),

                  ),
                  const SizedBox(height: 10),
                  OutfitsCard(
                    outfitName: 'Winter Outfits',
                    image: const AssetImage('images/vcoutfit4.jpg'),

                  ),
                  const SizedBox(height: 10),
                  OutfitsCard(
                    outfitName: 'Party Outfits',
                    image: const AssetImage('images/vcoutfit5.jpg'),

                  ),
                  const SizedBox(height: 10),
                  OutfitsCard(
                    outfitName: 'Dinner Outfits',
                    image: const AssetImage('images/vcoutfit6.jpg'),

                  ),
                  const SizedBox(height: 10),
                  OutfitsCard(
                    outfitName: 'Sports Outfits',
                    image: const AssetImage('images/vcoutfit7.jpg'),

                  ),

                ],
              ),
            ),
          ],
        )
    );
  }
}
class OutfitsCard extends StatelessWidget {
  final String outfitName;
  final ImageProvider image;

  OutfitsCard({
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
