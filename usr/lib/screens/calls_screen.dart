import 'package:flutter/material.dart';

class CallsScreen extends StatelessWidget {
  const CallsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 15,
      itemBuilder: (context, index) {
        return ListTile(
          leading: const CircleAvatar(
            backgroundImage: NetworkImage('https://i.pravatar.cc/150?img=5'),
          ),
          title: Text('Contact ${index + 1}'),
          subtitle: Row(
            children: [
              Icon(
                index % 2 == 0 ? Icons.call_made : Icons.call_received,
                color: index % 2 == 0 ? Colors.green : Colors.red,
                size: 16,
              ),
              const SizedBox(width: 8),
              const Text('Yesterday, 11:00 PM'),
            ],
          ),
          trailing: IconButton(
            icon: Icon(
              index % 3 == 0 ? Icons.call : Icons.videocam,
              color: Theme.of(context).colorScheme.primary,
            ),
            onPressed: () {},
          ),
        );
      },
    );
  }
}
