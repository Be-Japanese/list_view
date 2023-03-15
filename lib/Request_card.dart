import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/Request_model.dart';

class Request_card extends StatelessWidget {
  final Request_model request;
  Request_card({
   required this.request,
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("drawing>>>>>>> "+request.datetime.toString());
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Card(
        elevation: 10,
        child: Column(
          children: [
        Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                    height: 80,width: 80,
                    child: Image.network(request.userprofile)
                ),
                Column(
                  children: [
                    Text(request.username,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0,10,0,0),
                      child: Text(request.request,style: TextStyle(fontSize: 17,fontWeight: FontWeight.w400)),
                    )
                  ],
                )

              ],


            )
        ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  height: 100,width: 150,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.network(request.requestPhoto),
                  )
                )

              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Text(request.timeonly,style: TextStyle(fontSize: 15),),
                  Text(request.dateonly,style: TextStyle(fontSize: 15),),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
