import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'userlist.dart';
import 'callscreen.dart';
import 'chatscreen.dart';
import 'statesscreen.dart';
import 'camerascreen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  TabController controller;
  void initState() {
    super.initState();
    controller = new TabController(
      length: 4,
      vsync: this,
      initialIndex: 1,
    );
  }

  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 4,
        child: NestedScrollView(
          headerSliverBuilder: (context, value) {
            return [
              SliverAppBar(
                floating: true,
                pinned: true,
                title: Text('WhatsApp'),
                actions: [
                  IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {},
                  ),
                  PopupMenuButton(
                    icon: Icon(Icons.more_vert),
                    itemBuilder: (ctx) {
                      return [
                        PopupMenuItem(
                          child: Text('New gropu'),
                          value: 1,
                        ),
                        PopupMenuItem(
                          child: Text('New broadcast'),
                          value: 2,
                        ),
                        PopupMenuItem(
                          child: Text('Whatsapp Web'),
                          value: 3,
                        ),
                        PopupMenuItem(
                          child: Text('Starred messages'),
                          value: 4,
                        ),
                        PopupMenuItem(
                          child: Text('payments'),
                          value: 5,
                        ),
                        PopupMenuItem(
                          child: Text('Settings'),
                          value: 6,
                        ),
                      ];
                    },
                  )
                ],
                bottom: TabBar(
                  isScrollable: false,
                  indicatorColor: Colors.white,
                  controller: controller,
                  tabs: [
                    Icon(Icons.camera_alt),
                    Container(
                      child: Text('CHATS'),
                    ),
                    Container(
                      child: Text('STATUS'),
                    ),
                    Container(
                      child: Text('CALLS'),
                    ),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            controller: controller,
            children: [
              CameraScreen(),
              ChatScreen(),
              StatesScreen(),
              CallScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
