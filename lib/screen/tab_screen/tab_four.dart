import 'package:flutter/material.dart';
import 'package:whatsapp_clon/class/chatlist.dart';

class FourTabScreen extends StatefulWidget {
  const FourTabScreen({super.key});

  @override
  State<FourTabScreen> createState() => _FourTabScreenState();
}

class _FourTabScreenState extends State<FourTabScreen> {
  List mycall = Chatlist().calls;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: mycall.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: const CircleAvatar(),
              title: Text(mycall[index]['name']),
              subtitle: Text(mycall[index]['time']),
              trailing: const Icon(Icons.call),
            ),
          );
        });
  }
}
