import 'package:flutter/material.dart';
import 'package:whatsapp_clon/class/chatlist.dart';
import 'package:whatsapp_clon/screen/massage_screen/massage_screen.dart';

class SecentTabScreen extends StatefulWidget {
  const SecentTabScreen({super.key});

  @override
  State<SecentTabScreen> createState() => _SecentTabScreenState();
}

class _SecentTabScreenState extends State<SecentTabScreen> {
  List list = Chatlist().chatting;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 1,
            child: ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MassageScreen(
                              name: list[index]['name'],
                              image: list[index]['img'],
                              time: list[index]['time'],
                            )));
              },
              leading: const CircleAvatar(
                backgroundImage: NetworkImage(
                    "data:image/jpeg;base64,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"),
              ),
              title: Text(list[index]["name"]),
              subtitle: Text(
                list[index]['massag'],
                style: const TextStyle(),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              trailing: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    list[index]['time'],
                  ),
                  Container(
                    child: Center(
                        child: Text(
                      list[index]['count'],
                      style: const TextStyle(color: Colors.white),
                    )),
                    height: 25,
                    width: 25,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.green),
                  )
                ],
              ),
            ),
          );
        });
  }
}
