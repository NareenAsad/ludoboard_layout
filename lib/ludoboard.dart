import 'package:flutter/material.dart';
import 'package:ludo_task/custom_widget.dart';

class LudoBoard extends StatefulWidget {
  const LudoBoard({super.key});

  @override
  State<LudoBoard> createState() => _LudoBoardState();
}

class _LudoBoardState extends State<LudoBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 1200,
                width: 1200,
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                child: Board(color: Colors.deepOrange),
              ),
              Positioned(
                top: 0,
                right: 0,
                child: Board(color: Colors.teal),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                child: Board(color: Colors.lime),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Board(color: Colors.cyan),
              ),
              CenterBoard(),
              Positioned(
                left: 0,
                top: 480,
                child: Board3(
                  id: 0,
                  color: Colors.deepOrange,
                ),
              ),
              Positioned(
                left: 480,
                top: 0,
                child: Board2(
                  id: 1,
                  color: Colors.teal,
                ),
              ),
              Positioned(
                left: 480,
                bottom: 0,
                child: Board2(
                  id: 2,
                  color: Colors.lime,
                ),
              ),
              Positioned(
                right: 0,
                top: 480,
                child: Board3(
                  id: 3,
                  color: Colors.cyan,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
