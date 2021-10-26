import 'package:flutter/material.dart';

class Floating extends StatefulWidget {
  final int index;

  const Floating({Key key, this.index}) : super(key: key);
  @override
  _FloatingState createState() => _FloatingState();
}

class _FloatingState extends State<Floating> {
  @override
  Widget build(BuildContext context) {
    return widget.index == 1
        ? FloatingActionButton(
            backgroundColor: Colors.green,
            child: Icon(
              Icons.message,
            ),
            onPressed: () {},
          )
        : widget.index == 2
            ? Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FloatingActionButton(
                    backgroundColor: Colors.white54,
                    onPressed: () {},
                    child: Icon(
                      Icons.edit,
                      color: Colors.green.shade900,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  FloatingActionButton(
                    backgroundColor: Colors.green,
                    onPressed: () {},
                    child: Icon(Icons.camera_alt),
                  ),
                  SizedBox(
                    height: 30,
                  )
                ],
              )
            : FloatingActionButton(onPressed: () {});
  }
}
