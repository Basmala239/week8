import 'package:week8/cores/assets_manager/assets_manager.dart';

class ProfileModel{
  String iconPath;
  String title;
  ProfileModel(this.iconPath,this.title);
  static List<ProfileModel>profileList=[
    ProfileModel(AssetsManager.historyIcon, 'History'),
    ProfileModel(AssetsManager.bankIcon, 'Bank Details'),
    ProfileModel(AssetsManager.notificationsIcon, 'Notifications'),
    ProfileModel(AssetsManager.securityIcon, 'Security'),
    ProfileModel(AssetsManager.helpIcon, 'Help and Support'),
    ProfileModel(AssetsManager.termIcon, 'Terms and Conditions'),
    ProfileModel(AssetsManager.logoutIcon, 'Logout'),
  ];
}