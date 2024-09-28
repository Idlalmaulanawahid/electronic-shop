import 'package:cofee_shop/common/app-colors.dart';
import 'package:flutter/material.dart';

class AnimatedToggleSwitch extends StatefulWidget {
  @override
  _AnimatedToggleSwitchState createState() => _AnimatedToggleSwitchState();
}

class _AnimatedToggleSwitchState extends State<AnimatedToggleSwitch> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSwitched = !isSwitched;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        height: 32.0,
        width: 70.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: isSwitched ? AppColors.mainBaseColor : AppColors.greyColor100,
        ),
        child: Stack(
          children: <Widget>[
            AnimatedPositioned(
              duration: Duration(milliseconds: 300),
              curve: Curves.easeIn,
              top: 3.0,
              left: isSwitched ? 40.0 : 0.0,
              right: isSwitched ? 0.0 : 40.0,
              child: AnimatedSwitcher(
                duration: Duration(milliseconds: 300),
                transitionBuilder: (Widget child, Animation<double> animation) {
                  return RotationTransition(
                    turns: animation,
                    child: child,
                  );
                },
                child: isSwitched
                    ? Icon(
                        Icons.check_circle,
                        color: Colors.white,
                        key: UniqueKey(),
                        size: 25,
                      )
                    : Icon(
                        Icons.remove_circle_outline,
                        color: Colors.white,
                        key: UniqueKey(),
                        size: 25,
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
