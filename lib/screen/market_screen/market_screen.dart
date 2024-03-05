import 'package:flutter/material.dart';

import '../../model/coins_model.dart';
import '../../widget/trend_coins_widget.dart';

class MarketScreen extends StatelessWidget {
  const MarketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController (
      initialIndex: 0,
      length: 4,
      child:Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child:SingleChildScrollView(
          child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              children: [
                Text('Market is down ',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20
                ),),
                Text('-8.21%',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  color: Color(0xFFD90429)
                ),),
                Spacer(),
                Icon(Icons.search,color: Color(0xFF7D756C)),
              ],
            ),
            const Text('In the past 24 hours',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Color(0xFF7D756C)
                ),),
            const SizedBox(height: 15,),
            Row(
              children: [
                const Text('Coins',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),),
                const Spacer(),
                
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xFFE4E2DF)),
                    borderRadius: BorderRadius.circular(50)
                  ),
                  child:TextButton(
                    onPressed:(){} , 
                    child:const  Row(children: [
                      Text('MArket-USD',
                        style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Color(0xFF7D756C)
                      ),),
                      Icon(Icons.arrow_drop_down,color: Color(0xFF7D756C) ,)
                    ],),
                  )
                )
              ],
            ),
            const SizedBox(height: 10,),
            const TabBar(
              unselectedLabelColor:Color(0xFF7D756C) ,
              labelStyle: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: Color(0xFFF37135)
              ),
              indicatorColor: Color(0xFFF37135),
               tabs:  [
              Tab(text: 'All',),
              Tab(text: 'Gainer',),
              Tab(text: 'Loser',),
              Tab(text: 'Favourites',),
            ]),
            //Expanded(child: TabBarView(children: _content))
            Container(
              width: double.infinity,
              height: 500,
              child: ListView.builder(
                itemCount: CoinsModel.coinList.length,
                itemBuilder: (context, index) => coinsWidget(
                  CoinsModel.coinList[index].iconPath, 
                  CoinsModel.coinList[index].name, 
                  CoinsModel.coinList[index].description, 
                  CoinsModel.coinList[index].rateImagePath, 
                  CoinsModel.coinList[index].price, 
                  CoinsModel.coinList[index].rate)
                ),
            )
          ]
        )
        )
      )
    ));
  }
}