// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:whatsapp_clon/class/chatlist.dart';

// ignore: must_be_immutable
class MassageScreen extends StatefulWidget {
  String name;
  String time;
  String image;

  MassageScreen({
    Key? key,
    required this.name,
    required this.time,
    required this.image,
  }) : super(key: key);

  @override
  State<MassageScreen> createState() => _MassageScreenState();
}

class _MassageScreenState extends State<MassageScreen> {
  List massagin = Chatlist().masaging;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 10, 73, 4),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back),
            color: Colors.white,
          ),
          title: Expanded(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(widget.image),
              ),
              title: Text(
                widget.name,
                style: TextStyle(color: Colors.white),
              ),
              subtitle: Text(
                "last seen  " + widget.time,
                style: TextStyle(color: Colors.white.withOpacity(0.7)),
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  )),
              contentPadding: const EdgeInsets.all(0),
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: massagin.length,
                  padding: const EdgeInsets.all(10),
                  itemBuilder: (context, index) {
                    var data = massagin[index];
                    return Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: data['its_me'] == true
                          ? CrossAxisAlignment.end
                          : CrossAxisAlignment.start,
                      children: [
                        Container(
                          constraints: const BoxConstraints(
                            maxWidth: 250,
                          ),
                          child: Center(
                              child: Text(
                            data['massag'],
                            style: const TextStyle(color: Colors.white),
                          )),
                          margin: const EdgeInsets.symmetric(vertical: 5),
                          padding: const EdgeInsets.all(5),
                          height: 50,
                          width: 220,
                          decoration: BoxDecoration(
                            color: data['its_me'] == true
                                ? Colors.black
                                : const Color.fromARGB(255, 5, 75, 40),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                              bottomRight: Radius.circular(15),
                            ),
                          ),
                        ),
                        Text(data['time'])
                      ],
                    );
                  }),
            ),
            Row(
              children: [
                Expanded(
                    flex: 8,
                    child: Container(
                      margin: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(25)),
                      child: const TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    )),
                Expanded(
                    flex: 2,
                    child: IconButton(
                        onPressed: () {}, icon: const Icon(Icons.send)))
              ],
            )
          ],
        ));
  }
}
