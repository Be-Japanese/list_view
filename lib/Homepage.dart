import 'package:flutter/material.dart';
import 'Requests_list.dart';




class Homepage extends StatefulWidget {
   Homepage({Key? key}) : super(key: key);
int _currentindex = 0;
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {


      return Scaffold(

        drawer: Drawer(

            child: ListView(
              padding: const EdgeInsets.all(20),
              children: [
                ListTile(
                  title: const Text("Profile"),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: const Text("Home"),
                  onTap: () {},
                ),
                ListTile(
                  title: const Text("Requests"),
                  onTap: () {},
                ),
                ListTile(
                  title: const Text("Exit"),
                  onTap: () {},
                ),
              ],
            )),
        body: DefaultTabController(
          length: 2,
          child: Column(
            children: const [
              TabBar(
                  labelColor: Colors.lightBlue,
                  tabs: [
                    Tab(
                      child: Text("Done"),

                    ),
                    Tab(
                      child: Text("Waiting"),
                    ),
                  ]),
              Expanded(child: TabBarView(children:
              [


                Center(child: Text("Done")),
                Center(child: Text("Waiting"))


              ]))
            ],
          ),
        ),
        appBar: AppBar(
          title: const Text("Requests"),
        ),
        bottomNavigationBar: BottomNavigationBar(items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Side"),
        ],


          currentIndex: widget._currentindex,
          selectedItemColor: Colors.green,
          onTap: (int index) {
            setState(() {
              widget._currentindex = index;
            });
          },
        ),


      );


  }

}
