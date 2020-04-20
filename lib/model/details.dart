import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:friday4/utils/strings.dart';

class HomeModel extends ChangeNotifier
{
  bool _flip;//
   int _previousValue;//
  
  List<bool> _flipontouch;
  List <GlobalKey<FlipCardState>> _cardKey;
  Map <int,DecorationImage>cardID= {
 0: DecorationImage(image: AssetImage(card1)),
 1: DecorationImage(image: AssetImage(card2)),
 2: DecorationImage(image: AssetImage(card3)),
 3: DecorationImage(image: AssetImage(card4)),
 4: DecorationImage(image: AssetImage(card1)),
 5: DecorationImage(image: AssetImage(card2)),
 6: DecorationImage(image: AssetImage(card3)),
 7: DecorationImage(image: AssetImage(card4)),
 10:DecorationImage(image: AssetImage(questionMark)),
 };


  
  set flip(bool flip)
  {
    this._flip=flip;

  } 
 bool get flip=> _flip;
 set previousValue(int previousValue)
  {
    this._previousValue=previousValue;

  } 
 int get previousValue=> _previousValue;

 set flipontouch(List<bool> flipontouch)
  {
    this._flipontouch=flipontouch;

  } 
 List<bool> get flipontouch=> _flipontouch;

set cardKey(List<GlobalKey<FlipCardState>> cardKey)
  {
    this._cardKey=cardKey;

  } 
 List<GlobalKey<FlipCardState>> get cardKey=> _cardKey;



 notifyListeners();
 
}
