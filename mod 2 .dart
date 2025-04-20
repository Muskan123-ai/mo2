import 'package:flutter/material.dart';

void main() => runApp(ProfileCardApp());

class ProfileCardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Card Demo',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        body: Center(child: ProfileCard()),
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Avatar
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage('https://i.pravatar.cc/150?img=47'),
            ),
            SizedBox(height: 16),

            // Name
            Text(
              'Alex Morgan',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            // Bio
            Text(
              'Flutter Developer • UI/UX Enthusiast • Tech Explorer',
              style: TextStyle(fontSize: 14, color: Colors.grey[700]),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),

            // Action Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.person_add),
                  label: Text('Follow'),
                  style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(),
                    backgroundColor: Colors.blueAccent,
                  ),
                ),
                SizedBox(width: 10),
                OutlinedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.message),
                  label: Text('Message'),
                  style: OutlinedButton.styleFrom(shape: StadiumBorder()),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
