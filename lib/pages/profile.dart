import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [

            Center(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('images/vcpfp.jpg'), // Replace with profile picture URL
                  ),
                  SizedBox(height: 12),
                  Text(
                    'Teesta Joy', // Replace with dynamic username
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '@teestajoy',
                    style: TextStyle(
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About Me',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'I like clothes ', // User bio
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),

            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: Icon(Icons.checkroom),
                    title: Text('My Outfit Gallery '),
                    subtitle: Text('12 Posts'),
                  ),
                  ListTile(
                    leading: Icon(Icons.favorite),
                    title: Text('Favorite Outfits '),
                    subtitle: Text('4 Favourites'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
