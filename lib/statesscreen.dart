import 'package:flutter/material.dart';
import 'floating.dart';
import 'statuslist.dart';
import 'mainuser.dart';
import 'userlist.dart';
import 'package:provider/provider.dart';

class StatesScreen extends StatefulWidget {
  @override
  _StatesScreenState createState() => _StatesScreenState();
}

class _StatesScreenState extends State<StatesScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final provider = Provider.of<UserList>(context);
    final statuslist = provider.stateslist;
    return Scaffold(
      body: ListView.builder(
        itemCount: statuslist.length + 1,
        itemBuilder: (context, index) {
          index -= 1;

          return index < 0 ? MainUser() : StatesList(statuslist[index]);
        },
      ),
      floatingActionButton: Floating(
        index: 2,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}

// SizedBox(height: 30),
//       body: NestedScrollView(
//         headerSliverBuilder: (ctx, value) {
//           return [
//             Row(
//               children: [
//                 Stack(
//                   children: [
//                     ClipRRect(
//                       borderRadius: BorderRadius.circular(80),
//                       child: Container(
//                         height: 50,
//                         width: 50,
//                         child: Image.network(
//                           'https://cdn.pixabay.com/photo/2016/01/02/16/53/lion-1118467__340.jpg',
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                     ),
//                     Positioned(
//                       bottom: 0,
//                       child: Icon(Icons.add),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ];
//         },
//         body: Text('sdnsmd'),
//         // body: ListView(
//         //   children: [
//         //     Row(
//         //       children: [
//         //         Stack(
//         //           children: [
//         //             ClipRRect(
//         //               borderRadius: BorderRadius.circular(80),
//         //               child: Container(
//         //                 height: 50,
//         //                 width: 50,
//         //                 child: Image.network(
//         //                   'https://cdn.pixabay.com/photo/2016/01/02/16/53/lion-1118467__340.jpg',
//         //                   fit: BoxFit.cover,
//         //                 ),
//         //               ),
//         //             ),
//         //             Positioned(
//         //               bottom: 0,
//         //               child: Icon(Icons.add),
//         //             ),
//         //           ],
//         //         ),
//         //       ],
//         //     ),
//         //   ],
//         // ),
//       ),
//     );
//   }
// }

//               'https://cdn.pixabay.com/photo/2016/01/02/16/53/lion-1118467__340.jpg',
//               fit: BoxFit.cover,
//             ),
//           ),
//         ),
//         Positioned(
//           bottom: 0,
//           child: Icon(Icons.add),
//         ),
//       ],
//     ),
//   ],
// ),
//   ],
// ),
// List<String> list = List.generate(10, (index) => 'Index $index');
// void reorder(int old, int nw) {
//   if (old < nw) {
//     nw -= 1;
//   }
//   setState(() {
//     String el = list.removeAt(old);
//     list.insert(nw, el);
//   });
// }

// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//     body: ReorderableListView(
//         children: list
//             .map((e) => Container(
//                   key: Key(list.indexOf(e).toString()),
//                   child: Text(e),
//                 ))
//             .toList(),
//         onReorder: (int r1, int r2) => reorder(r1, r2)),
//   );
// }

//  NestedScrollView(
//   headerSliverBuilder: (context, innerBoxIsScrolled) {
//     return [
//       ListView(
//         children: [
//           Container(
//             height: 80,
//             child: Text('My status'),
//           ),
//           Text('Recent'),
//           // ListView.builder(
//           //   itemCount: 10,
//           //   itemBuilder: (ctx, index) {
//           //     return Container(
//           //       height: 80,
//           //       child: Text('$index'),
//           //     );
//           //   },
//           // ),
//           Text('Viewed status'),
//           // ListView.builder(
//           //   itemCount: 10,
//           //   itemBuilder: (ctx, index) {
//           //     return Container(
//           //       height: 80,
//           //       child: Text('$index'),
//           //     );
//           //   },
//           // ),
//         ],
//       ),
//     ];
//   },
//   body: ListView(
//     children: [
// Container(
//   height: 80,
//   child: Text('My status'),
// ),
// Text('Recent'),
// // ListView.builder(
// //   itemCount: 10,
// //   itemBuilder: (ctx, index) {
// //     return Container(
// //       height: 80,
// //       child: Text('$index'),
// //     );
// //   },
// // ),
// Text('Viewed status'),
// ListView.builder(
//   itemCount: 10,
//   itemBuilder: (ctx, index) {
//     return Container(
//       height: 80,
//       child: Text('$index'),
//     );
//   },
// ),
//     ],
//   ),
// ),
