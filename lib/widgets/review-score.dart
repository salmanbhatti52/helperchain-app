import 'package:flutter/cupertino.dart';

import '../Variables/globalVariables.dart';
import 'my-text.dart';

class ReviewScore extends StatefulWidget {
  const ReviewScore({Key? key}) : super(key: key);

  @override
  State<ReviewScore> createState() => _ReviewScoreState();
}
    bool score0 = false;
    bool score1 = false;
    bool score2 = false;
    bool score3 = false;
    bool score4 = false;
    bool score5 = false;
    bool score6 = false;
    bool score7 = false;
    bool score8 = false;
    bool score9 = false;

class _ReviewScoreState extends State<ReviewScore> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: (){
            setState ((){
              score0 =! score0;
            });
          },
          child: Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
                color: score0 ? KGreen : KLightGray,
                shape: BoxShape.circle
            ),
            child: Center(
              child: HeadingText(
                text: '1',
                textColor: KWhite,
                size: 13,
              ),
            ),
          ),
        ),
        SizedBox(width: 3),
        GestureDetector(
          onTap: (){
            setState ((){
              score1 =! score1;
            });
          },
          child: Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
                color: score1 ? KGreen : KLightGray,
                shape: BoxShape.circle
            ),
            child: Center(
              child: HeadingText(
                text: '2',
                textColor: KWhite,
                size: 13,
              ),
            ),
          ),
        ),
        SizedBox(width: 3),
        GestureDetector(
          onTap: (){
            setState ((){
              score2 =! score2;
            });
          },
          child: Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
                color: score2 ? KGreen : KLightGray,
                shape: BoxShape.circle
            ),
            child: Center(
              child: HeadingText(
                text: '3',
                textColor: KWhite,
                size: 13,
              ),
            ),
          ),
        ),
        SizedBox(width: 3),
        GestureDetector(
          onTap: (){
            setState ((){
              score3 =! score3;
            });
          },
          child: Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
                color: score3 ? KGreen : KLightGray,
                shape: BoxShape.circle
            ),
            child: Center(
              child: HeadingText(
                text: '4',
                textColor: KWhite,
                size: 13,
              ),
            ),
          ),
        ),
        SizedBox(width: 3),
        GestureDetector(
          onTap: (){
            setState ((){
              score4 =! score4;
            });
          },
          child: Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
                color: score4 ? KGreen : KLightGray,
                shape: BoxShape.circle
            ),
            child: Center(
              child: HeadingText(
                text: '5',
                textColor: KWhite,
                size: 13,
              ),
            ),
          ),
        ),
        SizedBox(width: 3),
        GestureDetector(
          onTap: (){
            setState ((){
              score5 =! score5;
            });
          },
          child: Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
                color: score5 ? KGreen : KLightGray,
                shape: BoxShape.circle
            ),
            child: Center(
              child: HeadingText(
                text: '6',
                textColor: KWhite,
                size: 13,
              ),
            ),
          ),
        ),
        SizedBox(width: 3),
        GestureDetector(
          onTap: (){
            setState ((){
              score6 =! score6;
            });
          },
          child: Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
                color: score6 ? KGreen : KLightGray,
                shape: BoxShape.circle
            ),
            child: Center(
              child: HeadingText(
                text: '7',
                textColor: KWhite,
                size: 13,
              ),
            ),
          ),
        ),
        SizedBox(width: 3),
        GestureDetector(
          onTap: (){
            setState ((){
              score7 =! score7;
            });
          },
          child: Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
                color: score7 ? KGreen : KLightGray,
                shape: BoxShape.circle
            ),
            child: Center(
              child: HeadingText(
                text: '8',
                textColor: KWhite,
                size: 13,
              ),
            ),
          ),
        ),
        SizedBox(width: 3),
        GestureDetector(
          onTap: (){
            setState ((){
              score8 =! score8;
            });
          },
          child: Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
                color: score8 ? KGreen : KLightGray,
                shape: BoxShape.circle
            ),
            child: Center(
              child: HeadingText(
                text: '9',
                textColor: KWhite,
                size: 13,
              ),
            ),
          ),
        ),
        SizedBox(width: 3),
        GestureDetector(
          onTap: (){
            setState ((){
              score9 =! score9;
            });
          },
          child: Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
                color: score9 ? KGreen : KLightGray,
                shape: BoxShape.circle
            ),
            child: Center(
              child: HeadingText(
                text: '10',
                textColor: KWhite,
                size: 13,
              ),
            ),
          ),
        ),
        SizedBox(width: 3),

      ],
    );
  }
}
