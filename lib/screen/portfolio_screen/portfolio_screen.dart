import 'package:flutter/material.dart';
import 'package:week8/model/coins_model.dart';
import 'package:week8/widget/trend_coins_widget.dart';

class ProtfolioScreen extends StatelessWidget {
  const ProtfolioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child:SingleChildScrollView(
          child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              Container(

                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                boxShadow: const  [
                  BoxShadow(
                  color: Color.fromARGB(116, 241, 241, 241),
                  blurRadius: 25,
                  offset: Offset(20, 80),
                  spreadRadius: 25,

                ), 
                ],
                color:const Color(0xFFF37135)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child:  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text('Portfolio',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        color: Colors.white
                      ),
                      ),
                      const Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Holding value',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                                color: Colors.white
                              ),
                              ),
                              Text('\$2,420.69',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 28,
                                color: Colors.white
                              ),
                              ),
                            ],
                          ),
                          SizedBox(width: 10,),
                          Column(
                            children: [
                              SizedBox(height: 25,),
                              Text('+13.25%',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Colors.white
                                ),
                                ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Invested value',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 10,
                              color: Colors.white
                            ),
                            ),
                            Text('\$1,328.00',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color: Colors.white
                            ),
                            ),
                            ],
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 10,left: 10),
                            width: 0.5,
                            height: 38,
                            color: Colors.white,
                          )
                          ,
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Available USD',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 10,
                              color: Colors.white
                            ),
                            ),
                            Text('\$1268',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color: Colors.white
                            ),
                            ),
                            ],
                          )
                        ],
                      )
                    ]
                  ),
                ),
              ),
              const SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                 Container(
                  width: 174,
                  height: 48,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10)
                      ,color: const Color(0xFFF37135)
                    ),
                    child: TextButton(
                    onPressed: (){},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(const Color(0xFFF37135))
                    ),
                    child: const Text('Deposit USD',
                    style: TextStyle(
                        color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 14
                    ),
                    ),
                  )),
                  Container(
                    width: 174,
                  height: 48,
                    decoration: BoxDecoration(
                      border: Border.all(color:const Color(0xFFF37135)),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: TextButton(
                      onPressed: (){},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.white),
                        
                      ),
                      child: const Text('Withdraw USD',
                      style: TextStyle(
                        color: Color(0xFFF37135),
                        fontWeight: FontWeight.w500,
                        fontSize: 14
                      ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 25,),
              const Text('Your coins',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20
                ),
              ),
              const SizedBox(height: 20,),
              Container(
              width: double.infinity,
              height: 400,
              child: ListView.builder(
                itemCount: CoinsModel.coinList.length,
                itemBuilder: (context, index) => CoinsModel.coinList[index].myCoin? coinsWidget(
                  CoinsModel.coinList[index].iconPath, 
                  CoinsModel.coinList[index].name, 
                  CoinsModel.coinList[index].description, 
                  CoinsModel.coinList[index].rateImagePath, 
                  CoinsModel.coinList[index].price, 
                  CoinsModel.coinList[index].rate):const SizedBox(width: 1,)
                ) ,
            )
          ]
          )
        )
      ),
    );
  }
}