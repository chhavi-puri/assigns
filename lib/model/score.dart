import 'package:flutter/material.dart';

class Score
 extends ChangeNotifier
{
  int scoreTotal=0;
  add()
  {
    print('here');
    scoreTotal= scoreTotal+10;
    print(scoreTotal);
    notifyListeners();
  }

}