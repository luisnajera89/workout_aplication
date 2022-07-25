import 'package:flutter/material.dart';

// ignore: camel_case_types
class Second_screen extends StatefulWidget {
  const Second_screen({Key? key}) : super(key: key);

  @override
  State<Second_screen> createState() => _Second_screenState();
}

// ignore: camel_case_types
class _Second_screenState extends State<Second_screen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 26, 26, 26),
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverAppBar(
                backgroundColor: const Color.fromARGB(255, 20, 20, 20),
                expandedHeight: 200.0,
                floating: true,
                //pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                    centerTitle: true,
                    title: const Text("Lucy Heaton",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                        )),
                    background: Row(
                      children: const <Widget>[
                        Spacer(),
                        CircleAvatar(
                          radius: 54.0,
                          backgroundImage: NetworkImage(
                            'assets/profile2.png',
                          ),
                        ),
                        Spacer(),
                      ],
                    )),
              ),
              SliverPadding(
                padding: const EdgeInsets.all(16.0),
                sliver: SliverList(
                  delegate: SliverChildListDelegate([]),
                ),
              ),
            ];
          },
          body: Column(
            children: <Widget>[
              const SizedBox(
                height: 10,
              ),
              Container(
                child: Stack(
                  children: [
                    RichText(
                        text: const TextSpan(children: <TextSpan>[
                      TextSpan(
                          text: "  🏆1        3 214           24\n",
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      TextSpan(
                        text: "\n",
                      ),
                      TextSpan(
                          text:
                              "   Ranking            Points            Goal Streaks\n",
                          style: TextStyle(
                              color: Color.fromARGB(255, 131, 131, 131))),
                    ]))
                  ],
                ),
              ),
              Container(
                height: 200,
                width: double.infinity,
                //color: Colors.purple,
                alignment: Alignment.center,
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(50),

                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 43, 43, 43),
                  image: DecorationImage(
                    image: AssetImage('assets/person5.png'),
                    alignment: Alignment.centerLeft,
                    fit: BoxFit.fitHeight,
                  ),
                  shape: BoxShape.rectangle,
                ),
                child: Stack(
                  children: [
                    RichText(
                        text: const TextSpan(children: <TextSpan>[
                      TextSpan(
                          text:
                              "                               Sarah StratFord\n",
                          style: TextStyle(color: Colors.white)),
                      TextSpan(
                          text:
                              "                               Personal Coach\n",
                          style: TextStyle(
                              color: Color.fromARGB(255, 131, 131, 131))),
                      TextSpan(
                          text: "\n", style: TextStyle(color: Colors.white)),
                      TextSpan(
                          text:
                              "                                241                 24\n                              Students   Champaions",
                          style: TextStyle(color: Colors.white)),
                    ]))
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),

              Container(
                color: const Color.fromARGB(255, 26, 26, 26),
                alignment: Alignment.topCenter,
                child: Column(children: [
                  Container(
                    height: 381,
                    width: 840,
                    padding: const EdgeInsets.all(135),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/chart1.png'),
                        alignment: Alignment.topCenter,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ]),
              ),
              const SizedBox(
                height: 10,
              ),
              //Container Vacio
              Container(),
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
