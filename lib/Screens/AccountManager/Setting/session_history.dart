import 'package:flutter/material.dart';
import 'package:lettutorapp/Screens/AccountManager/Setting/component/session_history_card.dart';

class SessionHistory extends StatelessWidget {
  const SessionHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(130),
        child: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.arrow_back_ios_outlined,
                    color: Colors.black)),
            title: Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 0),
              child: const Text(
                'Session History',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            flexibleSpace: Container(
              padding: const EdgeInsets.fromLTRB(15, 40, 15, 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    padding:
                        const EdgeInsets.symmetric(vertical: 4, horizontal: 20),
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
      body: SafeArea(
        child: ListView(
          children: const [
            CardSession(),
            CardSession(),
            CardSession(),
            CardSession(),
            CardSession(),
            CardSession(),
          ],
        ),
      ),
    );
  }
}
