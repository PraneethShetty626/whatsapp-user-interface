import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'userlist.dart';

class InfoScreen extends StatelessWidget {
  final User user;
  InfoScreen(this.user);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        height: 260,
        width: 200,
        child: GridTile(
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (ctx) {
                  return Scaffold(
                    appBar: AppBar(
                      backgroundColor: Colors.black,
                      title: Text(user.name),
                    ),
                    backgroundColor: Colors.black,
                    body: Center(
                      child: Container(
                        child: Image.asset(user.imageurl),
                      ),
                    ),
                  );
                }),
              ).then((value) => Navigator.pop(context));
            },
            child: Image.asset(
              user.imageurl,
              fit: BoxFit.cover,
            ),
          ),
          footer: Container(
            color: Colors.white,
            // padding: EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  onPressed: () {
                    print('1');
                  },
                  child: Container(
                    height: 50,
                    // width: 100,
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.info_outline,
                      color: Colors.green,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    print('adding call');
                    Provider.of<CalledOnes>(context, listen: false)
                        .addCalled(user, 1);
                  },
                  child: Icon(
                    Icons.call,
                    color: Colors.green,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    print('adding video');
                    Provider.of<CalledOnes>(context, listen: false)
                        .addCalled(user, 2);
                  },
                  child: Icon(
                    Icons.videocam,
                    color: Colors.green,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    print('4');
                  },
                  child: Container(
                    height: 50,
                    // width: 100,
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.message_outlined,
                      color: Colors.green,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
