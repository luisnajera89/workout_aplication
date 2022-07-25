// ignore_for_file: unnecessary_const

import 'package:aplication/second_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Project Workout Najera Aguilar';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      title: _title,
      home: const MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverAppBar(
                //title: const Text('Workout Season 2 '),
                backgroundColor: const Color.fromARGB(255, 44, 45, 47),
                titleSpacing: 50.0,
                centerTitle: false,
                elevation: 30.0,
                expandedHeight: 190.0,
                floating: true,
                pinned: false,
                snap: true,
                actionsIconTheme: const IconThemeData(opacity: 0.0),
                flexibleSpace: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          height: 100.0,
                          width: 100.0,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/profile1.png'),
                              fit: BoxFit.fill,
                            ),
                            shape: BoxShape.circle,
                          ),
                        ),
                        const Text(
                          "Jacob Smith",
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20,
                              color: Color.fromARGB(255, 255, 255, 255)),
                        ),
                        const Text(
                          "3 214",
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 15,
                              color: Color.fromARGB(255, 114, 114, 114)),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            final route = MaterialPageRoute(
                                builder: (context) => const Second_screen());
                            Navigator.push(context, route);
                          },
                          child: Container(
                            height: 100.0,
                            width: 100.0,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                alignment: FractionalOffset.bottomCenter,
                                image: AssetImage('assets/profile2.png'),
                                fit: BoxFit.fill,
                              ),
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                        const Text(
                          "Lucy Heaton",
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20,
                              color: Color.fromARGB(255, 255, 255, 255)),
                        ),
                        const Text(
                          "3 214",
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 15,
                              color: Color.fromARGB(255, 114, 114, 114)),
                        ),
                        const Text(
                          "- -",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 35,
                              color: Color.fromARGB(255, 216, 216, 216)),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          height: 100.0,
                          width: 100.0,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/profile3.png'),
                              fit: BoxFit.fill,
                            ),
                            shape: BoxShape.circle,
                          ),
                        ),
                        const Text(
                          "Andrea Romero",
                          style: const TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20,
                              color: const Color.fromARGB(255, 255, 255, 255)),
                        ),
                        const Text(
                          "2 553",
                          style: const TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 15,
                              color: const Color.fromARGB(255, 114, 114, 114)),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SliverToBoxAdapter(),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    return Column(children: <Widget>[
                      Card(
                        color: const Color.fromARGB(255, 35, 35, 37),
                        child: Row(
                          children: <Widget>[
                            const Image(
                                image: AssetImage('assets/person2.png')),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: const [
                                Padding(
                                    padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                                    child: Text(
                                      "Rickey Boston",
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 20,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255)),
                                    )),
                                Padding(
                                    padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                                    child: Text(
                                      "1 489",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Color.fromARGB(
                                              255, 190, 190, 190)),
                                    ))
                              ],
                            ),
                            const Padding(
                                padding: EdgeInsets.fromLTRB(100, 0, 0, 0),
                                child: Text(
                                  "+35",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromARGB(255, 84, 169, 91)),
                                ))
                          ],
                        ),
                      ),
                      Card(
                        color: const Color.fromARGB(255, 35, 35, 37),
                        child: Row(
                          children: <Widget>[
                            const Image(
                                image: AssetImage('assets/person3.png')),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: const [
                                Padding(
                                    padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                                    child: Text(
                                      "Jeffrey Vargas",
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 20,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255)),
                                    )),
                                Padding(
                                    padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                                    child: Text(
                                      "4 524 ",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Color.fromARGB(
                                              255, 190, 190, 190)),
                                    ))
                              ],
                            ),
                            const Padding(
                                padding: EdgeInsets.fromLTRB(100, 0, 0, 0),
                                child: Text(
                                  "-5",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromARGB(255, 169, 84, 84)),
                                ))
                          ],
                        ),
                      ),
                      Card(
                        color: const Color.fromARGB(255, 35, 35, 37),
                        child: Row(
                          children: <Widget>[
                            const Image(
                                image: AssetImage('assets/person4.png')),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: const [
                                Padding(
                                    padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                                    child: Text(
                                      "Sonia Matel",
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 20,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255)),
                                    )),
                                Padding(
                                    padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                                    child: Text(
                                      "3 274",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Color.fromARGB(
                                              255, 190, 190, 190)),
                                    ))
                              ],
                            ),
                            const Padding(
                                padding: EdgeInsets.fromLTRB(115, 0, 0, 0),
                                child: Text(
                                  "+2",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromARGB(255, 84, 169, 91)),
                                ))
                          ],
                        ),
                      ),
                      Card(
                        color: const Color.fromARGB(255, 35, 35, 37),
                        child: Row(
                          children: <Widget>[
                            const Image(
                                image: AssetImage('assets/person1.png')),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: const [
                                Padding(
                                    padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                                    child: Text(
                                      "Pablo Ponse",
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 20,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255)),
                                    )),
                                Padding(
                                    padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                                    child: Text(
                                      "6 171",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Color.fromARGB(
                                              255, 190, 190, 190)),
                                    ))
                              ],
                            ),
                            const Padding(
                                padding: EdgeInsets.fromLTRB(105, 0, 0, 0),
                                child: Text(
                                  "-9",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromARGB(255, 169, 84, 84)),
                                ))
                          ],
                        ),
                      ),
                    ]);
                  },
                  childCount: 8,
                ),
              ),
            ];
          },
          body: Column(
            children: [
              Flexible(
                  flex: 1,
                  child:
                      Container(color: const Color.fromARGB(255, 24, 22, 22))),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.leaderboard),
            label: 'Leaderboard',
            backgroundColor: Color.fromARGB(255, 44, 45, 47),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.restaurant),
            label: 'Diets & food',
            backgroundColor: Color.fromARGB(255, 44, 45, 47),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.timer),
            label: 'Timer & Routine',
            backgroundColor: Color.fromARGB(255, 44, 45, 47),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble),
            label: 'Chats',
            backgroundColor: Color.fromARGB(255, 44, 45, 47),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            backgroundColor: Color.fromARGB(255, 44, 45, 47),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
