import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:people_peace_solution/utils/routes.dart';


class OnBoardingPage extends StatefulWidget {
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).pushNamed(Routes.login);


  }

  Widget _buildImage(String assetName) {
    return Align(
      child: Image.asset('assets/$assetName.jpg', width: 350.0),
      alignment: Alignment.bottomCenter,
    );
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);
    const pageDecoration = const PageDecoration(

      bodyFlex: 9,
      titlePadding: EdgeInsets.only(bottom: 0),
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      pages: [
        PageViewModel(

          titleWidget: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Bağış Yapmaya Başlayın",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 30),),
             SizedBox(height: 20,),
              Text("Merhaba",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 35)),
              SizedBox(height: 40,),

              Text("20 saniyelik reklam izleyerek \nseçtiğiniz kampanyalara \ndestek olun",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.grey)),
            ],
          ),
          bodyWidget:  Padding(
            padding: const EdgeInsets.only(top:90.0),
            child: Row(
              children: [
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(image: DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage("asset/sol_kol.png")
                  )),
                ),
                SizedBox(width: 100,),
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(image: DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage("asset/sag_el.png")
                  )),
                ),
              ],
            ),
          ),

          image: _buildImage('img1'),
          decoration: pageDecoration,
        ),
        PageViewModel(

          titleWidget: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Bağış Yapmaya Başlayın",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 30),),
             SizedBox(height: 20,),
              Text("Merhaba",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 35)),
              SizedBox(height: 40,),

              Text("İster reklam  izleyerek \nister maddi imkanınız ile \ndilediğiniz desteği verin",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.grey)),
            ],
          ),
          bodyWidget: Padding(
            padding: const EdgeInsets.only(top:80.0),
            child: Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(image: DecorationImage(
                fit: BoxFit.contain,
                image: AssetImage("asset/kalp_kavanoz.png")
              )),
            ),
          ),

          image: _buildImage('img1'),
          decoration: pageDecoration,
        ),
        PageViewModel(

          titleWidget: Padding(
            padding: const EdgeInsets.only(left:40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Bağış Yapmaya Başlayın",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 30),),
               SizedBox(height: 20,),
                Text("Merhaba",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 35)),
                SizedBox(height: 40,),

                Text("Hazırsan seni bekliyoruz.",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.grey)),

              SizedBox(height: 90,),
              InkWell(
                onTap: (){
                  Navigator.of(context).pushNamed(Routes.login);

                },
                child: Container(child: Center(child: Text("Sen de Destek Ol!",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700),)),
                  decoration: BoxDecoration(
                      color: Colors.blueAccent.shade200,

                      borderRadius: BorderRadius.circular(20)
                  ),
                  height: 60,
                  width: 150,
                ),
              ),
                SizedBox(height: 80,),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("2M+",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 24),),
                        Text("destek",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14,color: Colors.grey),),
                        SizedBox(height: 50,),
                        Text("300+",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 24),),
                        Text("Kampanya",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14,color: Colors.grey),),
                        SizedBox(height: 50,),
                        Text("147+",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 24),),
                        Text("dernek",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14,color: Colors.grey),),

                      ]),
                    Padding(
                      padding: const EdgeInsets.only(left:40.0),
                      child: Container(
                        height: 300,
                        width: 300,
                        decoration: BoxDecoration(image: DecorationImage(
                            fit: BoxFit.contain,
                            image: AssetImage("asset/kalpli_kutu.png")
                        )),
                      ),
                    )
                    
                  ],
                )
              ],
            ),
          ),
          bodyWidget: Container(
            height: 150,
            width: 150,
          ),

          image: _buildImage('img1'),
          decoration: pageDecoration,
        ),

      ],
      onDone: () => _onIntroEnd(context),
      //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: true,
      skipFlex: 0,
      nextFlex: 0,
      skip: const Text('Geç'),
      next: const Icon(Icons.arrow_forward),
      done: const Text('Geç', style: TextStyle(fontWeight: FontWeight.w600)),
      dotsDecorator: const DotsDecorator(
        activeColor: Colors.amber,
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }
}