import 'package:flutter/material.dart';
import 'package:mario/view/utils/assets.dart';

import 'widgets/customButton.dart';

class MainWorld extends StatefulWidget {
  const MainWorld({Key? key}) : super(key: key);

  @override
  State<MainWorld> createState() => _MainWorldState();
}

class _MainWorldState extends State<MainWorld> {
  final bool midJump = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            flex: 4,
            child: Container(
              color: Colors.blue,
              // alignment: Alignment(marioX, marioY),
              child: midJump == true
                  ? Image.asset(Assets.marioJump)
                  : Image.asset(Assets.marioStand),
            )),
        Container(
          height: 10,
          color: Colors.green,
        ),
        Expanded(
            flex: 1,
            child: Container(
              color: Colors.brown,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomButton(
                    onPressed: () {
                      midJump == false;
                    },
                    icon: const Icon(Icons.arrow_back, color: Colors.white),
                  ),
                  CustomButton(
                    onPressed: () {
                      midJump == true;
                    },
                    icon: const Icon(Icons.arrow_upward, color: Colors.white),
                  ),
                  CustomButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_forward, color: Colors.white),
                  )
                ],
              ),
            ))
      ],
    );
  }

  void jump(){
    if(midJump == false) {
    }
  }
}
