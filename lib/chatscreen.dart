import 'dart:math';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import 'infoscreen.dart';
import 'userlist.dart';
import 'floating.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  Random word = new Random();
  // static Route<User> _dialogBuilder(BuildContext context, User arguments) {
  //   return DialogRoute<User>(
  //       context: context,
  //       builder: (BuildContext context) {
  //         return InfoScreen(arguments);
  //       });
  // }

  // Offset position = Offset(10, 10);
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<UserList>(context);

    final userlist = provider.userlist;
    final widths = MediaQuery.of(context).size.width;
    final width = widths - 60;

    return Scaffold(
      body: ListView.builder(
          itemCount: userlist.length,
          itemBuilder: (ctx, index) {
            return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    leading: InkWell(
                      hoverColor: Colors.black,
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (ctx) {
                            return InfoScreen(userlist[index]);
                          },
                        );
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(80),
                        child: Container(
                          height: 50,
                          width: 50,
                          child: Image.asset(
                            userlist[index].imageurl,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    title: Text(
                      userlist[index].name,
                      style: TextStyle(fontSize: 20),
                    ),
                    subtitle: Row(
                      children: [
                        Icon(
                          Icons.done_all_rounded,
                          color: index % 2 == 0 ? Colors.blue : Colors.black26,
                        ),
                        Text(
                          "${userlist[index].name} hii",
                        ),
                      ],
                    ),
                    trailing: Column(
                      children: [
                        Text(
                          DateFormat.jm().format(
                            DateTime.now(),
                          ),
                          style: TextStyle(
                            color: Colors.green,
                          ),
                        ),
                        SizedBox(height: 3),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            alignment: Alignment.center,
                            height: 20,
                            width: 20,
                            color: Colors.green,
                            child: Text(
                              index.toString(),
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.black38,
                    indent: 70,
                  ),
                ]);
          }),
      floatingActionButton: Floating(
        index: 1,
      ),
    );
  }
}

// Positioned(
//   top: position.dy,
//   child: Draggable(
//     feedback: FloatingActionButton(
//         backgroundColor: Colors.green.shade700,
//         child: Icon(
//           Icons.chat_rounded,
//         ),
//         onPressed: () {}),
//     child: FloatingActionButton(
//         backgroundColor: Colors.green.shade900,
//         child: Icon(
//           Icons.chat_rounded,
//         ),
//         onPressed: () {}),
//     childWhenDragging: Container(),
//     onDragEnd: (details) {

//       setState(() {
//         position = details.offset;
//       });
//     },
//     dragAnchor: DragAnchor.pointer,
//   ),
// ),

////
///
///
///
// Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     ChangeNotifierProvider.value(
//                       value: userlist[index],
//                       child: InkWell(
// hoverColor: Colors.black,
// onTap: () {
//   showDialog(
//     context: context,
//     builder: (ctx) {
//       return InfoScreen(userlist[index]);
//     },
//                           );
//                         },
//                         child: Container(
//                           margin: EdgeInsets.only(left: 10),
//                           child: ClipRRect(
//                             borderRadius: BorderRadius.circular(80),
//                             child: Container(
//                               width: 50,
//                               height: 50,
//                               child: Image.asset(
//                                 userlist[index].imageurl,
//                                 fit: BoxFit.cover,
//                               ),
//                             ),
//                           ),
//                           //
//                           // child: Container(
//                           //   height: 80,
//                           //   width: 80,
//                           //   margin: EdgeInsets.only(left: 10, bottom: 10),
//                           //   padding: EdgeInsets.all(5),
//                           //   decoration: BoxDecoration(
//                           //     shape: BoxShape.circle,

//                           //     // borderRadius: BorderRadius.all(Radius.circular(40)),
//                           //     border: Border.all(
//                           //       color: Colors.black12,
//                           //       width: 1,
//                           //     ),
//                           //   ),
//                           //   alignment: Alignment.center,
//                           //   child: FittedBox(
//                           //     clipBehavior: Clip.hardEdge,
//                           //     child: Image.network(
//                           //       userlist[index].imageurl,
//                           //       fit: BoxFit.cover,
//                           //     ),
//                           //   ),
//                           // ),
//                         ),
//                       ),
//                     ),
//                     Container(
//                       width: width * 0.07,
//                     ),
//                     Container(
//                       width: width * 0.93,
//                       height: 50,
//                       child: Column(
//                         children: [
//                           Container(
//                             height: 20,
//                             child: Row(
//                               children: [
//                                 Text(
//                                   userlist[index].name,
//                                   style: TextStyle(fontSize: 20),
//                                 ),
//                                 Spacer(),
//                                 Text(
//                                   DateFormat.jm().format(
//                                     DateTime.now(),
//                                   ),
//                                   style: TextStyle(
//                                     color: Colors.green,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Container(
//                             height: 20,
//                             child: Row(
//                               children: [
// Icon(Icons.done_all_rounded,
//     color: index % 2 == 0
//         ? Colors.blue
//         : Colors.black26),
//                                 Text('${userlist[index].name} Hi'),
//                                 Spacer(),
//                                 Container(
//                                   margin: EdgeInsets.only(right: 15),
// child: ClipRRect(
//   borderRadius: BorderRadius.circular(20),
//   child: Container(
//     alignment: Alignment.center,
//     height: 20,
//     width: 20,
//     color: Colors.green,
//     child: Text(
//       index.toString(),
//       style: TextStyle(color: Colors.white),
//     ),
//   ),
// ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),

//               ],
//             );
