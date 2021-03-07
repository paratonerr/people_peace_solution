import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Profile_Screen extends StatefulWidget {
  @override
  _Profile_ScreenState createState() => _Profile_ScreenState();
}

class _Profile_ScreenState extends State<Profile_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white38,
      appBar: AppBar(
        title: Center(child: Padding(
          padding: const EdgeInsets.only(right:40.0),
          child: Text("Profil",style: TextStyle(color: Colors.grey),),
        )),
        elevation: 0,
        backgroundColor: Colors.white38,

      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top:90.0,left: 20,right: 20),
              child: Center(
                child: Card(
                  elevation: 20,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top:120.0),
                        child: Text("Sait Faik Abasıyanık",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:40.0),
                        child: Divider(),
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top:16.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(20)
                            ),
                            height: 120,
                            width: MediaQuery.of(context).size.width-80,
                            child: Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.blue.shade100,
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                height: 100,
                                width: MediaQuery.of(context).size.width-100,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                        height: 50,
                                        width: 50,
                                        child: Image.asset("asset/bagis_icon.png")),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text("Bağış Bar",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700),),
                                            SizedBox(width: 200,),
                                            Text("%50",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600,color: Colors.grey),),

                                          ],
                                        ),
                                        SizedBox(height: 10,),
                                        LinearPercentIndicator(
                                          width: 300.0,
                                          lineHeight: 14.0,
                                          percent: 0.5,
                                          backgroundColor: Colors.white,
                                          progressColor: Colors.blue,
                                        ),

                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )
                      ),
                      SizedBox(height: 50,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(top:20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text("15",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 30),),
                                  SizedBox(height: 20,),
                                  Text("Maddi Bağış",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500,fontSize: 15)),
                                ],
                              ),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [BoxShadow(color: Colors.black38,offset: Offset(2,2),blurRadius: 10)],
                                borderRadius: BorderRadius.circular(20)
                            ),
                            height: 120,
                            width: 180,
                          ),
                          SizedBox(width: 20,),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(top:20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text("72",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 30),),
                                  SizedBox(height: 20,),
                                  Text("Reklam Bağışı",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500,fontSize: 15)),
                                ],
                              ),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [BoxShadow(color: Colors.black38,offset: Offset(2,2),blurRadius: 10)],
                                borderRadius: BorderRadius.circular(20)
                            ),
                            height: 120,
                            width: 180,
                          ),
                        ],
                      ),
                      SizedBox(height: 50,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(top:20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text("27",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 30),),
                                  SizedBox(height: 20,),
                                  Text("Tamamlanan Kampanya",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500,fontSize: 15)),
                                ],
                              ),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [BoxShadow(color: Colors.black38,offset: Offset(2,2),blurRadius: 10)],
                                borderRadius: BorderRadius.circular(20)
                            ),
                            height: 120,
                            width: 180,
                          ),
                          SizedBox(width: 20,),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(top:20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text("9",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 30),),
                                  SizedBox(height: 20,),
                                  Text("Kategori",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500,fontSize: 15)),
                                ],
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [BoxShadow(color: Colors.black38,offset: Offset(2,2),blurRadius: 10)],
                                borderRadius: BorderRadius.circular(20)
                            ),
                            height: 120,
                            width: 180,
                          ),
                        ],
                      ),


                    ],
                  ),

                ),
              ),
            ),
            Positioned(
              left: 170,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage("https://www.insanokur.org/wp-content/2019/10/Sait-Faik-Abasiyanik-2.jpg")),
                    borderRadius: BorderRadius.circular(100)
                ),
                height: 150,
                width: 150,
              ),
            ),

          ],
        ),
      ),

    );
  }
}
