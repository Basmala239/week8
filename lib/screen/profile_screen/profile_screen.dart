import 'package:flutter/material.dart';
import 'package:week8/cores/assets_manager/assets_manager.dart';
import 'package:week8/model/profile_model.dart';
import 'package:week8/widget/profile_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
        child:SingleChildScrollView(
          child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 209,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20)
                ,color: const Color(0xFFF37135)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 84,
                    height: 84,
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50)
                    ,color: Colors.white
                  ),
                  child: Image.asset(AssetsManager.logoImage)
                ),
                const Text('Giorgi Togonidze',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.white
                ),),
                const Text('Newuser420@gmail.com',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  color: Colors.white
                ),),
                const Text('+995 555 420 069',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Colors.white
                ),),
              ]),
            ),
            Container(
              width: double.infinity,
              height: 400,
              child: ListView.separated(
                itemCount: ProfileModel.profileList.length,
                itemBuilder: (context, index) => profileWidget(
                  ProfileModel.profileList[index].iconPath, 
                  ProfileModel.profileList[index].title,
                  ),
                  separatorBuilder: (context, index) => const Divider(),
                ),
            )
          ])
      )
    );
  }
}