import 'package:people_peace_solution/domain/campaign.dart';
import 'package:people_peace_solution/repository/remote_repo.dart';

class ProductRepo{
Remote _remote =Remote();


Future<List<Campaign>> getDetail()async{
  try{
    List<Campaign> d= await _remote.getDetail();

    return d;

  }catch(e){
    print(e.toString());
  }
}

Future createUser(){
  try{

  }catch(e){
    print(e.toString());
  }
}

}