import 'package:flutter/material.dart';
import 'package:lettutorapp/Widget/session_history_card.dart';

class SessionHistoryPage extends StatelessWidget {
  const SessionHistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(130),
          child: AppBar(
              foregroundColor: Colors.black,
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: const Text(
                'Session History',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              flexibleSpace: Container(
                padding: const EdgeInsets.fromLTRB(15, 40, 15, 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      padding: const EdgeInsets.symmetric(
                          vertical: 4, horizontal: 20),
                      decoration: BoxDecoration(
                        color: Colors.black38.withAlpha(10),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.search,
                            color: Colors.black.withAlpha(120),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Search session history",
                                hintStyle: TextStyle(
                                  color: Colors.black.withAlpha(120),
                                ),
                                border: InputBorder.none,
                              ),
                              onChanged: (String keyword) {},
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
        ),
        body: const SafeArea(child: SessionHistory()),
      ),
    );
  }
}

class SessionHistory extends StatelessWidget {
  const SessionHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        CardSession(),
        CardSession(),
        CardSession(),
        CardSession(),
        CardSession(),
        CardSession(),
      ],
    );
  }
}
