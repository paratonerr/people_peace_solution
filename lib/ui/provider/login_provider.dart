import 'package:flutter/cupertino.dart';
import 'package:people_peace_solution/repository/product_repo.dart';

class LoginProvider with ChangeNotifier{
  ProductRepo _productRepo =ProductRepo();
  void creatUser(){
    _productRepo.createUser();

  }

}