import 'package:flutter/material.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: 20, // Mock data
            itemBuilder: (context, index) {
              return ListTile(
                leading: const CircleAvatar(
                  backgroundImage:
                      NetworkImage('https://i.pravatar.cc/150?img=3'),
                ),
                title: Text('Contact ${index + 1}'),
                subtitle: const Text('This is the last message...'),
                trailing: const Text('10:30 AM'),
                onTap: () {},
              );
            },
          ),
        ),
        // Ad Placeholder
        Container(
          height: 50,
          color: Colors.grey[200],
          child: const Center(
            child: Text('Banner Ad Placeholder'),
          ),
        )
      ],
    );
  }
}
