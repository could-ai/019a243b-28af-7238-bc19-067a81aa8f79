import 'package:flutter/material.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: Stack(
            children: const [
              CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage('https://i.pravatar.cc/150?img=1'),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: CircleAvatar(
                  radius: 10,
                  backgroundColor: Colors.green,
                  child: Icon(Icons.add, size: 20, color: Colors.white),
                ),
              )
            ],
          ),
          title: const Text('My Status'),
          subtitle: const Text('Tap to add status update'),
          onTap: () {},
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('Recent updates'),
        ),
        ListTile(
          leading: const CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage('https://i.pravatar.cc/150?img=2'),
          ),
          title: const Text('Contact 2'),
          subtitle: const Text('Today, 10:20 AM'),
          onTap: () {},
        ),
        ListTile(
          leading: const CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage('https://i.pravatar.cc/150?img=4'),
          ),
          title: const Text('Contact 3'),
          subtitle: const Text('Today, 9:45 AM'),
          onTap: () {},
        ),
      ],
    );
  }
}
