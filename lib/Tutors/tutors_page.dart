// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:chips_choice/chips_choice.dart';
import 'package:flutter/material.dart';
import 'package:lettutorapp/Provider/tutor_provider.dart';
import 'package:lettutorapp/Widget/card_tutor.dart';
import 'package:lettutorapp/Widget/filter_chips.dart';
import 'package:lettutorapp/Widget/loading.dart';
import 'package:lettutorapp/Widget/navigation_bar.dart';
import 'package:lettutorapp/Widget/no_data.dart';
import 'package:lettutorapp/router.dart';
import 'package:provider/provider.dart';

class TutorsPage extends StatefulWidget {
  const TutorsPage({Key? key}) : super(key: key);

  @override
  _TutorsPageState createState() => _TutorsPageState();
}

class _TutorsPageState extends State<TutorsPage> {
  TextEditingController searchController = TextEditingController();
  late String keyword;
  late int tag;
  List<String> options = [
    'All',
    'English for Kids',
    'English for Business',
    'Conversational',
    'STARTERS',
    'MOVERS',
    'FLYERS',
    'KET',
    'PET',
    'IELST',
    'TOEFL',
    'TOEIC',
  ];
  @override
  void initState() {
    searchController.addListener(
      () {
        setState(() {
          keyword = searchController.text;
        });
      },
    );
    tag = 0;
    super.initState();
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(190),
          child: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              automaticallyImplyLeading: false,
              title: const Text(
                'Tutors',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              flexibleSpace: Container(
                padding: const EdgeInsets.fromLTRB(15, 30, 15, 0),
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
                              controller: searchController,
                              decoration: InputDecoration(
                                hintText: "Search Tutors",
                                hintStyle: TextStyle(
                                  color: Colors.black.withAlpha(120),
                                ),
                                border: InputBorder.none,
                              ),
                              onChanged: (String keyword) {
                                LoadingDialog.showLoadingDialog(
                                    context, 'Loading...');
                                Future.delayed(
                                    const Duration(milliseconds: 400), () {
                                  LoadingDialog.hideLoadingDialog(context);
                                  Provider.of<TutorProvider>(context,
                                          listen: false)
                                      .changeSearch(keyword);
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                        padding: const EdgeInsets.symmetric(horizontal: 0),
                        child: ChipsChoice<int>.single(
                          value: tag,
                          onChanged: (val) {
                            print(options[val]);
                            LoadingDialog.showLoadingDialog(
                                context, 'Loading...');
                            Future.delayed(const Duration(milliseconds: 700),
                                () {
                              setState(() => tag = val);
                              LoadingDialog.hideLoadingDialog(context);
                              Provider.of<TutorProvider>(context, listen: false)
                                  .changeFilter(options[val]);
                              setState(() {
                                options.removeAt(val);
                              });
                            });
                          },
                          choiceItems: C2Choice.listFrom<int, String>(
                            source: options,
                            value: (i, v) => i,
                            label: (i, v) => v,
                          ),
                          choiceStyle: C2ChoiceStyle(
                            labelStyle: const TextStyle(color: Colors.black),
                            color: Colors.blue.shade50,
                            brightness: Brightness.dark,
                            showCheckmark: false,
                          ),
                          choiceActiveStyle: const C2ChoiceStyle(
                            color: Colors.blue,
                          ),
                        )),
                  ],
                ),
              )),
        ),
        body: const TutorsScreen(),
        bottomNavigationBar: const NaviBotBar(
          selectedIndex: 3,
        ),
      ),
    );
  }
}

class TutorsScreen extends StatelessWidget {
  const TutorsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(5, 5, 5, 0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Consumer<TutorProvider>(
              builder: (context, TutorProvider data, child) {
                return data.listFavoriteTutor.isEmpty
                    ? const NotFoundData()
                    : ListView.builder(
                        physics: const ScrollPhysics(),
                        itemCount: data.listFavoriteTutor.length,
                        itemBuilder: (context, index) {
                          return CardTutor(
                              index: index,
                              tutor: data.listFavoriteTutor[index],
                              ontap: () {
                                Navigator.of(context).pushNamed(
                                    Routers.TeacherDetail,
                                    arguments: data.listFavoriteTutor[index]);
                              });
                        });
              },
            ),
          ),
        ],
      ),
    );
  }
}
