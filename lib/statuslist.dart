import 'package:flutter/material.dart';
import 'userlist.dart';
import 'package:intl/intl.dart';
import 'package:dotted_border/dotted_border.dart';

class StatesList extends StatefulWidget {
  final User user;

  const StatesList(this.user);

  @override
  _StatesListState createState() => _StatesListState();
}

class _StatesListState extends State<StatesList> {
  final radii = 2 * 3.14 * 80;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            InkWell(
              hoverColor: Colors.black,
              onTap: () {},
              child: Container(
                margin: EdgeInsets.only(left: 10),
                child: DottedBorder(
                  color: Colors.green,
                  dashPattern: [
                    40,
                    40,
                  ],
                  borderType: BorderType.Circle,
                  radius: Radius.circular(80),
                  strokeWidth: 2,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(80),
                    child: Container(
                      width: 50,
                      height: 50,
                      child: Image.asset(
                        widget.user.imageurl,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(widget.user.name),
                SizedBox(
                  height: 10,
                ),
                Text('${DateFormat.m().format(DateTime.now())} minutes ago'),
              ],
            )
          ],
        ),
        Divider(
          indent: 70,
          color: Colors.black54,
        ),
      ],
    );
  }
}
