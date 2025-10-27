import 'package:couldai_user_app/screens/calls_screen.dart';
import 'package:couldai_user_app/screens/chats_screen.dart';
import 'package:couldai_user_app/screens/status_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _currentTabIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(() {
      setState(() {
        _currentTabIndex = _tabController.index;
      });
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GB WhatsApp'),
        actions: [
          IconButton(icon: const Icon(Icons.search), onPressed: () {}),
          IconButton(icon: const Icon(Icons.more_vert), onPressed: () {}),
        ],
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: 'CHATS'),
            Tab(text: 'STATUS'),
            Tab(text: 'CALLS'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          ChatsScreen(),
          StatusScreen(),
          CallsScreen(),
        ],
      ),
      floatingActionButton: _buildFab(),
    );
  }

  Widget _buildFab() {
    switch (_currentTabIndex) {
      case 0: // Chats
        return FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.message),
        );
      case 1: // Status
        return Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              mini: true,
              onPressed: () {},
              backgroundColor: Colors.grey[300],
              foregroundColor: Theme.of(context).colorScheme.primary,
              child: const Icon(Icons.edit),
            ),
            const SizedBox(height: 16),
            FloatingActionButton(
              onPressed: () {},
              child: const Icon(Icons.camera_alt),
            ),
          ],
        );
      case 2: // Calls
        return FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add_call),
        );
      default:
        return Container();
    }
  }
}
