import 'package:flutter/cupertino.dart';
import 'package:people_peace_solution/domain/campaign.dart';
import 'package:people_peace_solution/repository/product_repo.dart';
import 'package:people_peace_solution/repository/remote_repo.dart';

class DetailProvider with ChangeNotifier{
  List<Campaign> _list =  List<Campaign>();
  ProductRepo _productRepo =ProductRepo();
  bool _visibility=false;


  bool get visibility => _visibility;

  set visibility(bool value) {
    _visibility = value;
    notifyListeners();
  }

  List<Campaign> get list => _list;

  set list(List<Campaign> value) {
    _list = value;
    notifyListeners();
  }


  Future getCampaignDetail()async{

  await _productRepo.getDetail().then((value){

   list=value;
   });


   notifyListeners();

  }



}