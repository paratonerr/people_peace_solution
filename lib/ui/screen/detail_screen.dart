import 'package:flutter/material.dart';
import 'package:people_peace_solution/domain/addmob/addmob_data.dart';
import 'package:firebase_admob/firebase_admob.dart';
import 'package:people_peace_solution/ui/provider/detail_provider.dart';
import 'package:people_peace_solution/ui/widget/detail_widget.dart';
import 'package:provider/provider.dart';
class DetailPage extends StatefulWidget {
 final int index;

  DetailPage({this.index});
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  DetailProvider _detailProvider;
  PageController _controller=PageController(initialPage: 0);
  InterstitialAd _interstitialAd;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Addmob.addmobInitialize();
    _interstitialAd =Addmob.adInterstitialAd();
  }

  @override
  Widget build(BuildContext context) {
    _detailProvider=Provider.of<DetailProvider>(context);
    return Scaffold(

      bottomNavigationBar:Container(
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left:40.0),
              child: Container(
                child: Icon(Icons.save,color: Colors.grey,),
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(20)
                ),
                height: 60,
                width: 90,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:40.0),
              child: InkWell(
                onTap: ()async{

                  _interstitialAd..load()..show();
                },
                child: Container(
                  child: Center(child: Text("Destek Ol",style: Theme.of(context).textTheme.headline5.copyWith(color: Colors.white),)),
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20)
                  ),
                  height: 60,
                  width: 260,
                ),
              ),
            )

          ],
        ),
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [BoxShadow(color: Colors.black45,offset: Offset(-2,-2),blurRadius: 10)]
        ),
        height: 90,
      ) ,
      body: DetailWidget(controller: _controller,detailProvider: _detailProvider,index: widget.index,),


    );
  }
}


