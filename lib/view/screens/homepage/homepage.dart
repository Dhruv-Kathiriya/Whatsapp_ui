import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:whatsapp_app/golobal/chat_list/chat.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.sizeOf(context).height;
    double w = MediaQuery.sizeOf(context).width;
    TextScaler textScaler = MediaQuery.textScalerOf(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff111C27),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: h * 0.17,
                    width: w,
                    color: Color(0xff202D36),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Column(
                        children: [
                          const Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "WhatsApp",
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                width: 225,
                              ),
                              Icon(
                                Icons.search,
                                size: 30,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Icon(Icons.more_vert)
                            ],
                          ),
                          SizedBox(
                            height: h * 0.06,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(
                                Icons.camera_alt,
                                size: 25,
                              ),
                              GestureDetector(
                                onTap: () {
                                  log("clicked button");
                                  index = 0;
                                  setState(() {});
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        color: index == 0
                                            ? const Color(0xff0CAE9C)
                                            : Colors.transparent,
                                        width: 2,
                                      ),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Text(
                                      "CHATS",
                                      style: TextStyle(
                                          fontSize: textScaler.scale(20),
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  log("clicked button");
                                  index = 1;

                                  setState(() {});
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        width: 2,
                                        color: index == 1
                                            ? const Color(0xff0CAE9C)
                                            : Colors.transparent,
                                      ),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Text(
                                      "STATUS",
                                      style: TextStyle(
                                          fontSize: textScaler.scale(20),
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  log("clicked button");
                                  index = 2;

                                  setState(() {});
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        width: 2,
                                        color: index == 2
                                            ? const Color(0xff0CAE9C)
                                            : Colors.transparent,
                                      ),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Text(
                                      "CALLS",
                                      style: TextStyle(
                                          fontSize: textScaler.scale(20),
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              IndexedStack(
                index: index,
                children: [
                  /*Align(
                    alignment: Alignment.bottomRight,
                    child: FloatingActionButton(
                      onPressed: () {},
                      child: Icon(Icons.add),
                    ),
                  ),*/
                  Column(
                    children: [
                      ...chatlist.map(
                        (e) => Column(
                          children: [
                            ListTile(
                              leading: CircleAvatar(
                                radius: 25,
                                backgroundImage: NetworkImage(e['image']),
                              ),
                              title: Text(
                                e['name'],
                                style: TextStyle(
                                  fontSize: textScaler.scale(15),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              subtitle: Row(
                                children: [
                                  const Icon(
                                    Icons.done_all,
                                    color: Colors.blue,
                                  ),
                                  Text(
                                    e['msg'],
                                    style: TextStyle(
                                      fontSize: textScaler.scale(15),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              trailing: Text(
                                e['time'],
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                            const Divider(
                              thickness: 2,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: h * 0.24,
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: FloatingActionButton(
                          onPressed: () {},
                          child: Icon(Icons.add),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(16),
                        child: ListTile(
                          leading: CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_EupKQS1R5zJ-mwrZ8HpmFgbXhhWR-w4KJg&s"),
                          ),
                          title: Text(
                            "My Status",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text("Tap to add status updates "),
                        ),
                      ),
                      SizedBox(
                        height: h * 0.005,
                      ),
                      Container(
                        height: h * 0.035,
                        width: w,
                        color: Colors.black26,
                        child: const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "    Viewed Upadtes",
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                      ),
                      ...statuslist.map(
                        (e) => Padding(
                          padding: const EdgeInsets.only(
                            left: 16,
                            bottom: 10,
                          ),
                          child: ListTile(
                            leading: CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_EupKQS1R5zJ-mwrZ8HpmFgbXhhWR-w4KJg&s"),
                            ),
                            title: Text(
                              e['name'],
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(e['time']),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: h * 0.005,
                      ),
                      Container(
                        height: h * 0.035,
                        width: w,
                        color: Colors.black26,
                        child: const Align(
                          alignment: Alignment.centerLeft,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "    Muted upadtes",
                                style: TextStyle(fontSize: 15),
                              ),
                              Icon(
                                Icons.keyboard_arrow_down,
                                size: 30,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      ...calllist.map(
                        (e) => Padding(
                          padding: const EdgeInsets.only(
                              left: 16, bottom: 5, top: 7),
                          child: ListTile(
                            leading: CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_EupKQS1R5zJ-mwrZ8HpmFgbXhhWR-w4KJg&s"),
                            ),
                            title: Text(
                              e['name'],
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                            subtitle: Row(
                              children: [
                                Icon(
                                  Icons.arrow_outward,
                                  color: Colors.green,
                                ),
                                SizedBox(
                                  width: w * 0.01,
                                ),
                                Text(
                                  e['datetime'],
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                            trailing: Icon(Icons.phone),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
