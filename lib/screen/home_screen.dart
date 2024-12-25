import 'package:flutter/material.dart';
import 'package:whatsapp_clon/screen/tab_screen/tab_one.dart';
import 'package:whatsapp_clon/screen/tab_screen/tab_four.dart';
import 'package:whatsapp_clon/screen/tab_screen/tab_two.dart';
import 'package:whatsapp_clon/screen/tab_screen/tab_three.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            elevation: 5,
            backgroundColor: const Color.fromARGB(255, 10, 73, 4),
            title: const Text(
              "Whats App",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    color: Colors.white.withOpacity(0.8),
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_vert,
                    color: Colors.white.withOpacity(0.8),
                  )),
            ],
            bottom: TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorColor: Colors.white,
                labelColor: Colors.white,
                unselectedLabelColor: Colors.white.withOpacity(0.7),
                tabs: const [
                  Tab(
                    icon: Icon(
                      Icons.camera_alt_outlined,
                    ),
                  ),
                  Tab(
                    text: "CHATE",
                  ),
                  Tab(
                    text: "STATUS",
                  ),
                  Tab(
                    text: "CALL",
                  ),
                ]),
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: const Color.fromARGB(255, 3, 97, 73),
            onPressed: () {},
            child: const Icon(
              Icons.message_outlined,
              color: Colors.white,
            ),
          ),
          body: const TabBarView(children: [
            FastTabScreen(),
            SecentTabScreen(),
            TherdTabScreen(),
            FourTabScreen()
          ])),
    );
  }
}
