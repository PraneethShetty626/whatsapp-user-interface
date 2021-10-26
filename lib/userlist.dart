import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class User with ChangeNotifier {
  final String id;
  final String name;
  final String imageurl;
  bool havestatus = false;
  bool called = false;
  bool videocalled = false;

  User({
    @required this.id,
    @required this.name,
    @required this.imageurl,
    this.havestatus,
    this.called,
    this.videocalled,
  });
}

class UserList with ChangeNotifier {
  List<User> _userlist = [
    User(
      id: '1',
      name: 'Praneeth',
      havestatus: true,
      imageurl: 'assets/1.jpg',
    ),
    User(
      id: '2',
      name: 'Sadashiv',
      havestatus: true,
      imageurl: 'assets/2.jpg',
    ),
    User(
      id: '3',
      name: 'Sandesh',
      imageurl: 'assets/3.jpg',
    ),
    User(
      id: '4',
      name: 'Rohit',
      imageurl: 'assets/4.jpg',
    ),
    User(
      id: '5',
      name: 'Santhosh',
      havestatus: true,
      imageurl: 'assets/5.jpg',
    ),
    User(
      id: '6',
      name: 'Prathwik',
      imageurl: 'assets/6.jpg',
    ),
    User(
      id: '7',
      name: 'Manohar',
      imageurl: 'assets/7.jpg',
    ),
    User(
      id: '8',
      name: 'Umesh',
      havestatus: true,
      imageurl: 'assets/8.jpg',
    ),
    User(
      id: '9',
      name: 'Vaishnavi k',
      havestatus: true,
      imageurl: 'assets/9.jpg',
    ),
    User(
      id: '10',
      name: 'Vaishnavi hegde',
      imageurl: 'assets/10.jpg',
    ),
    User(
      id: '11',
      name: 'pallavi',
      havestatus: true,
      imageurl: 'assets/12.jpg',
    ),
    User(
      id: '12',
      name: 'Srivatsa',
      havestatus: true,
      imageurl: 'assets/13.jpg',
    ),
    User(
      id: '13',
      name: 'Harsha',
      havestatus: true,
      imageurl: 'assets/14.jpg',
    ),
    User(
      id: '14',
      name: 'Sanketh',
      havestatus: true,
      imageurl: 'assets/11.jpg',
    ),
    User(
      id: '15',
      name: 'Pranav',
      havestatus: true,
      imageurl: 'assets/12.jpg',
    ),
  ];

  List<User> get userlist {
    return [..._userlist];
  }

  List<User> get stateslist {
    return _userlist.where((element) => element.havestatus == true).toList();
  }
}

class CalledOnes with ChangeNotifier {
  List<User> _calllist = [];
  List<User> get calllist {
    return [..._calllist];
  }

  void addCalled(User user, int value) {
    _calllist.add(User(
      id: user.id,
      imageurl: user.imageurl,
      name: user.name,
      havestatus: user.havestatus,
      called: value == 1 ? true : false,
      videocalled: value == 2 ? true : false,
    ));

    notifyListeners();
  }
}
