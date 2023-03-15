import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/Request_model.dart';

import 'Request_card.dart';




class requestList extends StatefulWidget {
   requestList({Key? key}) : super(key: key);


   List<Request_model> request_list = [];

  @override
  State<requestList> createState() => _requestListState();
}

class _requestListState extends State<requestList> {

  void addrequest()
  {
    setState(() {
      String str = "https://www.pngmart.com/files/22/User-Avatar-Profile-Transparent-Background.png";
      String acc = "https://thumbor.forbes.com/thumbor/fit-in/900x510/https://www.forbes.com/advisor/wp-content/uploads/2023/01/multi.jpg";

      widget.request_list.add(Request_model(username: "username", request: "request", datetime: DateTime.now(), requestPhoto: acc, userprofile: str));
    });
  }


  @override
  Widget build(BuildContext context) {
     return  Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){

          addrequest();

        },
        child: Icon(Icons.add),
      ),
      body:
          ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: widget.request_list.length,
              itemBuilder: (BuildContext context, int index) {
                return Request_card(request: widget.request_list[index]);
              }
          )



    );  }
}

