import 'package:cusafe/Theme/colorTheme.dart';
import 'package:dough/dough.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatelessWidget {
  DoughController _doughController = DoughController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.purple12,
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Feel safe in CU',
                  style: TextStyle(
                    fontSize: 21.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: PressableDough(
                child: Image.asset('assets/images/PurpleImage.png')),
          ),
          Expanded(
            flex: 3,
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Spacer(),
                  GestureDetector(
                    onTapDown: (deatils) {
                      _doughController.start(
                        origin: Offset(0, 0),
                        target: Offset(0, 50),
                      );
                      HapticFeedback.lightImpact();
                    },
                    onTapUp: (details) => {
                      _doughController.stop(),
                    },
                    child: DoughRecipe(
                      data: DoughRecipe.of(context).copyWith(
                        entryDuration: Duration(milliseconds: 250),
                      ),
                      child: Dough(
                        controller: _doughController,
                        child: Container(
                          width: 190.0,
                          height: 50.0,
                          child: Center(
                            child: Text(
                              'Get Started',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: ThemeColors.white,
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: ThemeColors.purple,
                              borderRadius: BorderRadius.circular(20.0),
                              boxShadow: [
                                BoxShadow(
                                  color: ThemeColors.purple.withOpacity(0.2),
                                  blurRadius: 6.0,
                                  offset: Offset(0.0, 6.0),
                                )
                              ]),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: 'By getting started you accepting\n',
                      style: TextStyle(
                        color: ThemeColors.midGrey,
                        fontSize: 12.0,
                        height: 1.5,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'privacy policies',
                          style: TextStyle(color: ThemeColors.purple),
                        ),
                        TextSpan(text: ' and '),
                        TextSpan(
                          text: 'terms of use',
                          style: TextStyle(
                            color: ThemeColors.purple,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
