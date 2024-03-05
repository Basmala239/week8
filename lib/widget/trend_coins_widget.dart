import 'package:flutter/material.dart';

Widget coinsWidget (String iconPath, String name, String description, String rateImagePath, String price, String rate){
    return  Container(
        
        margin: const EdgeInsets.only(bottom: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          boxShadow: const [
            BoxShadow(
            color: Color.fromARGB(255, 241, 241, 241),
            blurRadius: 4,
            offset: Offset(10, 5),

          ),
          ],
          color: Colors.white
        ),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Row(
            children: [
              Image.asset(iconPath),
              const SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(name,
                    style:const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16
                    )),
                  Text(description,
                    style:const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                      color: Color(0xFF7D756C),
                    )),
                ],
              ),
              const Spacer(),
              Image.asset(rateImagePath),
               const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(price,
                    style:const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                    )),
                  Text(rate,
                    style:TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                      color:rate[0]=='+'? const Color(0xFF21BF73):const Color(0xFFD90429),
                    )),
                ],
              )
            ],
          ),
        ),
      
    );
  }
