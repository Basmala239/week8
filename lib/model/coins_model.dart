import 'package:week8/cores/assets_manager/assets_manager.dart';

class CoinsModel{
  String iconPath;
  String name;
  String description;
  String rateImagePath;
  String price;
  String rate;
  bool myCoin;
  CoinsModel(this.iconPath,this.name,this.description,this.rateImagePath,this.price,this.rate,this.myCoin);
  static List<CoinsModel>coinList=[
    CoinsModel(AssetsManager.bitcoinIcon, 'Bitcoin', 'BTC', AssetsManager.bitcoinRateImage, '\$49,487.00', '+3.47%', false),
    CoinsModel(AssetsManager.ethereumIcon, 'Ethereum', 'ETH', AssetsManager.ethereumRateImage, '\$3,397.73', '-11.00%', true),
    CoinsModel(AssetsManager.theterIcon, 'Theter', 'USDT', AssetsManager.theterRateImage, '\$1.0', '+0.06%', true),
    CoinsModel(AssetsManager.dogecoinIcon, 'Dogecoin', 'DOGE', AssetsManager.dogecoinRateImage, '\$0.2380', '+10.01%', true),
    CoinsModel(AssetsManager.stellarIcon, 'Stellar', 'XLM', AssetsManager.stellerRateImage, '\$0.3203', '-5.65%', true),
    CoinsModel(AssetsManager.binanceIcon, 'Binance Coin', 'BNB', AssetsManager.binanceRateImage, '\$434.95', '-5.65%', false),
    CoinsModel(AssetsManager.litecoinIcon, 'Litecoin', 'XLM', AssetsManager.litecoinRateImage, '\$168.87', '-5.65%', false),
  ];
}