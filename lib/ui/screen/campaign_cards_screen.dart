import 'package:flutter/material.dart';
import 'package:people_peace_solution/domain/campaign.dart';
import 'package:people_peace_solution/domain/singletons.dart';
import 'package:people_peace_solution/ui/provider/detail_provider.dart';
import 'package:people_peace_solution/utils/routes.dart';
import 'package:provider/provider.dart';
import 'package:after_layout/after_layout.dart';

class CampaignScreen extends StatefulWidget {
  @override
  _CampaignScreenState createState() => _CampaignScreenState();
}

class _CampaignScreenState extends State<CampaignScreen> with AfterLayoutMixin<CampaignScreen> {

  DetailProvider _detailProvider;
  @override
  void afterFirstLayout(BuildContext context) {
    // TODO: implement afterFirstLayout
  }
  @override
  Widget build(BuildContext context) {
    _detailProvider=Provider.of<DetailProvider>(context);
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
backgroundColor: Colors.white,
      body: Campaign_Widget(detailProvider: _detailProvider,),

    );
  }


}

class Campaign_Widget extends StatefulWidget {
  final DetailProvider detailProvider;
  const Campaign_Widget({
    this.detailProvider,
    Key key,
  }) : super(key: key);

  @override
  _Campaign_WidgetState createState() => _Campaign_WidgetState();
}

class _Campaign_WidgetState extends State<Campaign_Widget> with AfterLayoutMixin<Campaign_Widget>{
  DetailProvider _detailProvider;

  @override
  void afterFirstLayout(BuildContext context)async {

    _detailProvider=widget.detailProvider;
    await _detailProvider.getCampaignDetail();
    print("tetiklendi");
    // TODO: implement afterFirstLayout
  }



  @override
  Widget build(BuildContext context) {

    return ListView.builder(itemCount:_detailProvider.list.length==0?0:_detailProvider.list.length,itemBuilder: (context,index){
    return InkWell(
      onTap: (){
        singletons.index=index;
Navigator.of(context).pushNamed(Routes.detail,arguments: index);

      },
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 250,
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [BoxShadow(color: Colors.black12,offset:Offset(-2,-2),blurRadius: 10 )]
          ),
          child: Row(
            children: [
              Expanded(
                  flex: 3,
                  child: Container(
                    child: Column(

                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                          Padding(
                            padding: const EdgeInsets.only(top:16.0,left:16,right: 5),
                            child: Container(
                              decoration: BoxDecoration(
                                boxShadow: [BoxShadow(color: Colors.black26,offset: Offset(2,2),blurRadius: 10)],
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(_detailProvider.list[index].iconPhoto)
                                ),
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(40)
                              ),
                              height: 60,
                              width: 60,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:16.0,left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(_detailProvider.list[index].campaignCompany,style: TextStyle(color: Colors.grey),textAlign: TextAlign.start,),
                                SizedBox(height: 20,),
                                Text(_detailProvider.list[index].campaignTitle,style: Theme.of(context).textTheme.headline6,textAlign: TextAlign.start)
                              ],
                            ),
                          )
                        ],),
                        Expanded(child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(_detailProvider.list[index].campaignDescription)
                        )),

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text("Zaman Aralığı : 14/02/21 - 14/03/21",style: TextStyle(color: Colors.grey,fontSize: 10),),
                           SizedBox(width:45,),
                              Icon(Icons.save,color: Colors.grey,)
                            ],
                          ),
                        ),

                      ],

                    ),
              )),
              Expanded(
                  flex:2,
                  child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(_detailProvider.list[index].detailPhoto)
                  ),
                    color: Colors.black12,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(100),
                      topLeft: Radius.circular(100))
                ),
              )),
            ],
          ),

        ),
      ),
    );

    });
  }


}
