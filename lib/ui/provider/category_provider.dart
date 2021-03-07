import 'package:flutter/cupertino.dart';
import 'package:people_peace_solution/domain/asset.dart';

class CategoryProvider with ChangeNotifier{

List <iconModel> icons =List<iconModel>();

void listOlustur(){
  icons.add(iconModel(
      photoName: "Doğa",
      photoPath: "asset/doga_icon.png"
  ));
  icons.add(iconModel(
      photoName: "Eğitim",
      photoPath: "asset/egitim_icon.png"
  ));
  icons.add(iconModel(
      photoName: "Sağlık",
      photoPath: "asset/saglik_icon.png"
  ));
  icons.add(iconModel(
      photoName: "Enerji",
      photoPath: "asset/enerji_icon.png"
  ));
  icons.add(iconModel(
      photoName: "Canlılar",
      photoPath: "asset/canlilar_icon.png"
  ));
  icons.add(iconModel(
      photoName: "Cinsiyet",
      photoPath: "asset/cinsiyet_icon.png"
  ));
  icons.add(iconModel(
      photoName: "Yemek",
      photoPath: "asset/yemek_icon.png"
  ));

  icons.add(iconModel(
      photoName: "Sağlıklı gıda",
      photoPath: "asset/sgida_icon.png"
  ));

  icons.add(iconModel(
      photoName: "Geri dönüşüm",
      photoPath: "asset/gdonusum_icon.png"
  ));

  icons.add(iconModel(
      photoName: "Irkçılık",
      photoPath: "asset/irkcilik_icon.png"
  ));

  icons.add(iconModel(
      photoName: "Güvenlik",
      photoPath: "asset/guvenlik_icon.png"
  ));
  icons.add(iconModel(
      photoName: "Adalet",
      photoPath: "asset/adalet_icon.png"
  ));
  notifyListeners();



}

}