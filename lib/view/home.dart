import 'package:flutter/material.dart';
import 'package:friday4/component/appBar.dart';
import 'package:friday4/component/textStyle.dart';
import 'package:friday4/model/details.dart';
import 'package:friday4/model/mediaQuery.dart';
import 'package:friday4/model/score.dart';
import 'package:friday4/utils/colors.dart';
import 'package:flip_card/flip_card.dart';
import 'package:friday4/viewModel/logic.dart';
import 'package:provider/provider.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}
Score score= Score();
HomeModel homeModel= HomeModel();
MediaaQuery mediaaQuery=MediaaQuery();
class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState()
  {
    homeModel.flip=false;
    score.scoreTotal=0;
    homeModel.previousValue=-1;
    homeModel.flipontouch=[true, true, true, true ,true, true, true, true ];
    homeModel.cardKey=[GlobalKey<FlipCardState>(),GlobalKey<FlipCardState>(),GlobalKey<FlipCardState>(),GlobalKey<FlipCardState>(),
    GlobalKey<FlipCardState>(),GlobalKey<FlipCardState>(),GlobalKey<FlipCardState>(),GlobalKey<FlipCardState>()
    ];
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    mediaaQuery.width=MediaQuery.of(context).size.width;
    mediaaQuery.height=MediaQuery.of(context).size.height;
    
    return Scaffold(
      backgroundColor: grey,
      appBar: AppBar(
        backgroundColor: red,
        title: text
      ),
      body: displayWidget(),
    );
  }
  Widget displayWidget()
  {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          width: mediaaQuery.width*.8,
          height: mediaaQuery.height*.08,
          child: Column(
            children: <Widget>[
              Consumer<Score>(builder: (context, score, child){
                return 
                Text('Your score: ${score.scoreTotal}, Need to score: ${40-(score.scoreTotal)}', style: textStyle);
              },),
              Text('Let\'s Play'),
            ],
          ),
        ),
        Center(
           child:   GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              crossAxisCount: 4
              ),
              itemCount: 8,
              scrollDirection: Axis.vertical,
              padding: EdgeInsets.all(10),
              shrinkWrap: true,
              itemBuilder: (BuildContext context, index)
              {
                print(index);
                return  FlipCard(
                  key: homeModel.cardKey[index],
                  flipOnTouch: homeModel.flipontouch[index],
                  onFlip:()
                  {
                     flipped(context,index);
                  },
                  back:  Container(
                    decoration: BoxDecoration(
                     image: homeModel.cardID[index],
                    )
                  ),
                   front: front(),
                   );
                   },
          ),
        ),
      ],
    );
  }
  Widget front()
  {
    return Container(
       decoration: BoxDecoration(
         image: homeModel.cardID[10],
         )
);
  }
}