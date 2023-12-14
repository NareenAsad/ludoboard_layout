import 'package:flutter/material.dart';

class Board extends StatelessWidget {
  Color? color;

  Board({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          color: color,
          height: 480,
          width: 480,
        ),
        Positioned(
          child: Stack(
            children: [
              Container(
                height: 306,
                width: 306,
                color: Colors.black,
              ),
              Positioned(
                top: 2,
                left: 2,
                bottom: 2,
                right: 2,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  height: 300,
                  width: 300,
                ),
              ),
              Positioned(
                top: 15,
                left: 15,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: color,
                  ),
                  child: SizedBox(
                    width: 60,
                    height: 90,
                  ),
                ),
              ),
              Positioned(
                top: 15,
                right: 15,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: color,
                  ),
                  child: SizedBox(
                    width: 60,
                    height: 90,
                  ),
                ),
              ),
              Positioned(
                bottom: 15,
                left: 15,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: color,
                  ),
                  child: SizedBox(
                    width: 60,
                    height: 90,
                  ),
                ),
              ),
              Positioned(
                bottom: 15,
                right: 15,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: color,
                  ),
                  child: SizedBox(
                    width: 60,
                    height: 90,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class CenterBoard extends StatelessWidget {
  CenterBoard({Key? key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 240,
          width: 240,
          color: Colors.white,
        ),
        Positioned(
          left: 80,
          top: -39,
          child: DecoratedBox(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.teal,
            ),
            child: SizedBox(
              width: 80,
              height: 80,
            ),
          ),
        ),
        Positioned(
          left: -39,
          top: 80,
          child: DecoratedBox(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.deepOrange,
            ),
            child: SizedBox(
              width: 80,
              height: 80,
            ),
          ),
        ),
        Positioned(
          right: -39,
          top: 80,
          child: DecoratedBox(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.cyan,
            ),
            child: SizedBox(
              width: 80,
              height: 80,
            ),
          ),
        ),
        Positioned(
          bottom: -39,
          left: 80,
          child: DecoratedBox(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.lime,
            ),
            child: SizedBox(
              width: 80,
              height: 80,
            ),
          ),
        ),
      ],
    );
  }
}

class Board2 extends StatelessWidget {
  Color? color;
  int id;
  Board2({super.key, required this.color, required this.id});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 480,
          width: 240,
          child: GridView.builder(
            itemCount: 18,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 1,
            ),
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  color: _isColor(index, id) ? color : Colors.white,
                  border: Border.all(
                    style: BorderStyle.solid,
                    color: Colors.black,
                    width: 1,
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class Board3 extends StatelessWidget {
  Color? color;
  int id;
  Board3({super.key, required this.color, required this.id});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      width: 480,
      child: GridView.builder(
          itemCount: 18,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 1,
            crossAxisCount: 6,
          ),
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                color: _isColor(index, id) ? color : Colors.white,
                border: Border.all(
                    style: BorderStyle.solid, color: Colors.black, width: 1),
              ),
            );
          }),
    );
  }
}

bool _isColor(int index, int id) {
  switch (id) {
    case 0:
      switch (index) {
        case 1:
        case 7:
        case 8:
        case 9:
        case 10:
        case 11:
          return true;
        default:
          return false;
      }
    case 1:
      switch (index) {
        case 4:
        case 5:
        case 7:
        case 10:
        case 13:
        case 16:
          return true;
        default:
          return false;
      }
    case 2:
      switch (index) {
        case 4:
        case 12:
        case 7:
        case 10:
        case 13:
        case 1:
          return true;
        default:
          return false;
      }
    case 3:
      switch (index) {
        case 6:
        case 8:
        case 7:
        case 9:
        case 10:
        case 16:
          return true;
        default:
          return false;
      }
    default:
      return false;
  }
}
