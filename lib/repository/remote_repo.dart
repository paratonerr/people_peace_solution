import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:people_peace_solution/domain/campaign.dart';
import 'package:people_peace_solution/domain/singletons.dart';
import 'package:firebase_auth/firebase_auth.dart';


class Remote{

  CollectionReference query =
  FirebaseFirestore.instance.collection("category");
  List<Campaign> list =  List<Campaign>();
  Future<List<Campaign>> getDetail()async{
    await query.get().then((querySnapshot) async {
      querySnapshot.docs.forEach((document) {
        CollectionReference d=document.reference.collection("campaign");
        d.get().then((value) async{

          value.docs.forEach((element) async{
            var d =element.data();
            list.add(Campaign.fromJsonMap(d));
            print(list[0].campaignDescription);
          });
        });
      }
      );}
    );

    return list;


    }

    Future createUser(){



    }
  }

