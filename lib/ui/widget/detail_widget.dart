import 'package:flutter/material.dart';
import 'package:people_peace_solution/ui/provider/detail_provider.dart';
import 'package:percent_indicator/percent_indicator.dart';

class DetailWidget extends StatelessWidget {
  final int index;
  final DetailProvider detailProvider;
  const DetailWidget({
    this.index,
    this.detailProvider,
    Key key,
    @required PageController controller,
  }) : _controller = controller, super(key: key);

  final PageController _controller;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: PageView(
        controller: _controller,
        children: [
          SingleChildScrollView(
            child: Stack(
              children: [
                Column(
                  children: [
                    Container(

                      decoration: BoxDecoration(

                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(detailProvider.list[index].detailPhoto)),
                          color: Colors.grey),
                      height: MediaQuery.of(context).size.height-500,
                      width: MediaQuery.of(context).size.width,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:100.0),
                      child: Text(detailProvider.list[index].campaignTitle,style: Theme.of(context).textTheme.headline5.copyWith(color: Colors.black),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:16.0),
                      child: Text(detailProvider.list[index].campaignTitle,style: Theme.of(context).textTheme.subtitle1.copyWith(color: Colors.grey),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:46.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [BoxShadow(offset: Offset(2,2),color: Colors.black26,blurRadius: 10)]
                        ),
                        height: 70,
                        width: MediaQuery.of(context).size.width-40,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left:40.0),
                              child: InkWell(child: Text("Açıklama",style: TextStyle(color: Colors.black,fontSize: 18))),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:40.0),
                              child: Container(width: 1,color: Colors.black12,),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:50.0),
                              child: InkWell(child: Text("Görseller",style: TextStyle(color: Colors.grey,fontSize: 12))),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:50.0),
                              child: Container(width: 1,color: Colors.black12,),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:30.0),
                              child: InkWell(child: Text("Değerlendirme",style: TextStyle(color: Colors.grey,fontSize: 12),)),
                            ),
                          ],
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top:30.0,left: 20,right: 20),
                      child: SingleChildScrollView(child: Center(child: Text(detailProvider.list[index].campaignDescription,style: TextStyle(color: Colors.grey),))),
                    ),



                  ],
                ),

                Positioned(
                  left: 170,
                  top: 280,
                  child: Center(
                    child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(detailProvider.list[index].iconPhoto)
                            ),

                            borderRadius: BorderRadius.circular(30)
                        ),

                        height: 150,width: 150),
                  ),
                ),
                Positioned(
                  left: 20,
                  top: 270,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(150)),
                    child: CircularPercentIndicator(
                      radius: 120.0,
                      lineWidth: 15.0,
                      percent: 0.8,
                      center: new Text("85%"),
                      progressColor: Colors.green,
                    ),
                  ),
                ),
                InkWell(
                    onTap: (){

                      Navigator.pop(context);
                    },
                    child: Icon(Icons.chevron_left,size: 40,color: Colors.white,)),


              ],
            ),
          )

        ],
      ),
    );
  }
}