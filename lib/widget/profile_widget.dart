import 'package:flutter/material.dart';

Widget profileWidget(String iconPath, String name){
  return  Row(
      children: [
        Image.asset(iconPath,width: 50,),
        Text(name,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w400,

          color: Colors.black
        ),),
        const Spacer(),
        IconButton(
          onPressed: 
          (){},
          icon:
          const Icon(Icons.keyboard_arrow_right_outlined,color:Color(0xFF7D756C) ,)
        )
      ],
    
  );
}