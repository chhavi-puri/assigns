import 'package:flutter/material.dart';
import 'package:friday4/model/score.dart';
import 'package:friday4/routes/routes.dart';
import 'package:friday4/view/home.dart';
import 'package:provider/provider.dart';
  flipped(BuildContext context,index){
    print('here');
                  if(!homeModel.flip)
                  {
                    homeModel.flip=true;
                    homeModel.previousValue = index;
                  }
                  else{
                    homeModel.flip = false;
                    if (homeModel.previousValue != index) {
                            if ( homeModel.cardID[homeModel.previousValue]!=homeModel.cardID[index]) {
                              homeModel.cardKey[homeModel.previousValue]
                                  .currentState
                                  .toggleCard();
                              homeModel.previousValue = index;
                            } else {
                              homeModel.flipontouch[homeModel.previousValue] = false;
                              homeModel.flipontouch[index] = false;
                             Provider.of<Score>(context,listen:false).add();    

                             if(homeModel.flipontouch.every((t)=>t==false))
                             {
                               Navigator.pushNamed(context, Routes().newScreen);
                             }
                              // score.add();
                  }
                }
                  }
                }
