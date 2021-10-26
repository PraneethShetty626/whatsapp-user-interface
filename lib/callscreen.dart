import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './userlist.dart';
import 'package:intl/intl.dart';

class CallScreen extends StatefulWidget {
  @override
  _CallScreenState createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CalledOnes>(context);
    final calllist = provider.calllist;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: calllist.length,
          itemBuilder: (ctx, index) {
            return ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(80),
                child: Container(
                  height: 50,
                  width: 50,
                  child: Image.asset(
                    calllist[index].imageurl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              title: Text(calllist[index].name),
              subtitle: Row(
                children: [
                  Icon(
                    Icons.call_made_outlined,
                    color: Colors.green,
                  ),
                  Text(
                    DateFormat.yMd().format(DateTime.now()),
                  ),
                ],
              ),
              trailing: calllist[index].called
                  ? Icon(
                      Icons.call,
                      color: Colors.green.shade900,
                    )
                  : Icon(
                      Icons.videocam_rounded,
                      color: Colors.green.shade900,
                    ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.call,
        ),
        backgroundColor: Colors.green,
      ),
    );
  }
}
