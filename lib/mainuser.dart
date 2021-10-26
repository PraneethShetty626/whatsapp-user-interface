import 'package:flutter/material.dart';

class MainUser extends StatefulWidget {
  @override
  _MainUserState createState() => _MainUserState();
}

class _MainUserState extends State<MainUser> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            InkWell(
              hoverColor: Colors.black,
              onTap: () {},
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(80),
                      child: Container(
                        width: 50,
                        height: 50,
                        child: Image.asset(
                          'assets/15.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                      bottom: 0,
                      right: 0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(60),
                        child: Container(
                          color: Colors.green,
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      ))
                ],
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('My Status'),
                SizedBox(
                  height: 10,
                ),
                Text('Tap to add update'),
              ],
            )
          ],
        ),
        Divider(
          indent: 70,
          color: Colors.white,
        ),
        Container(
          padding: EdgeInsets.only(left: 20, top: 5, bottom: 5),
          height: 30,
          width: double.infinity,
          color: Colors.black12,
          child: Text('Viewed updates'),
        ),
        Divider(
          indent: 70,
          color: Colors.white,
        ),
      ],
    );
  }
}
