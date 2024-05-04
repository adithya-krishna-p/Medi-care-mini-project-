import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: ListView(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Hi, James!",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "How are you feeling today ?",
                          style: TextStyle(
                              fontSize: 16, color: Colors.grey.shade600),
                        ),
                      ],
                    ),
                  ),
                  CircleAvatar(
                    child: Image(
                        image: NetworkImage(
                            "https://www.clipartmax.com/png/full/100-1005846_waiter-free-icon-avatar-profile-circle-png.png")),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30.0),
                child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFF1F3),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: "Search", border: InputBorder.none),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Icon(
                          Icons.search_rounded,
                          color: Colors.grey.shade400,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: Text(
                      "Our Services",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Text("see more")
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 40),
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Color(0xFFFFF1F3),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(children: [
                      Text(
                        "Chat Bot",
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 10),
                      Icon(Icons.chat_rounded)
                    ]),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 40),
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Color(0xFFFFF1F3),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(children: [
                      Text(
                        "Doctor Booking",
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 10),
                      Icon(Icons.person)
                    ]),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
