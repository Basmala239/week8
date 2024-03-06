import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:week8/cores/assets_manager/assets_manager.dart';
import 'package:week8/model/coins_model.dart';
import 'package:week8/provider/provider.dart';
import 'package:week8/widget/trend_coins_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 
    Future? _loadContact;

  @override
  void initState() {
    super.initState();
    // do this instead of calling the future directly in the build method as this will lead to calling the future more than one time
    _loadContact = Provider.of<ControllProvider>(context,listen: false).loadContacts();
  }
  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: const EdgeInsets.all(18.0),
        child:SingleChildScrollView(
          child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                width: double.infinity,
                height: 160,
                child: Stack(
                  children: [
                    Container(
                      height: 150,
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
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                          const Text('Welcome Giorgi,',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 12
                            ),
                          ),
                          const Text('Make your first investment today',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 15
                            ),
                          ),
                        
                          ElevatedButton(
                            onPressed: (){},
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.white)
                            ),
                            child: const Text('Invest Today',
                            style: TextStyle(
                              color: Color(0xFFF37135),
                              fontWeight: FontWeight.w500,
                              fontSize: 12
                            ),
                            ),
                          )
                        
                        ]),
                      ),
                    ),
                    Positioned(
                     top: 0,
                     right: 0,
                     child: Image.asset(AssetsManager.bitImage),
                    ),
                    Positioned(
                      bottom: -10,
                      right: 40,
                      child: Image.asset(AssetsManager.ethereumImage),
                    ), 
                  ],
                ),
              ),
            
            const SizedBox(height: 15,),
            const Text('Trending Coins',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 20
              ),
             ),
             const SizedBox(height: 10,),
            FutureBuilder(
        future: _loadContact,
        builder:(context,snapshot) {
          if (snapshot.connectionState == ConnectionState.done){
            if (snapshot.hasError){
              return const Center(
                child: Icon(
                  Icons.error_outline,
                  color: Colors.red,
                  size: 60,
                ),
              );
            }
            return Container(
              width: double.infinity,
              height: 400,
              child: ListView.builder(
                itemCount: CoinsModel.coinList.length+5,
                itemBuilder: (context, index) => coinsWidget(
                  CoinsModel.coinList[index].iconPath, 
                  CoinsModel.coinList[index].name, 
                  CoinsModel.coinList[index].description, 
                  CoinsModel.coinList[index].rateImagePath, 
                  CoinsModel.coinList[index].price, 
                  CoinsModel.coinList[index].rate)
                ),
            );
          }else{
            return const Center(child: CircularProgressIndicator(color:  Color(0xFFF37135),));
          }
  }
      ),
          ],
        ),
      
    )
    );
  }
}