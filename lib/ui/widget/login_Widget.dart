import 'package:flutter/material.dart';
import 'package:people_peace_solution/utils/routes.dart';

class login_widget extends StatefulWidget {
  @override
  _login_widgetState createState() => _login_widgetState();
}

class _login_widgetState extends State<login_widget> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child:InkWell(
          onTap: (){
            ///Login servisleri kuruldu fakat entegre etmeye zaman yetmedi
            Navigator.of(context).pushNamed(Routes.category);
          },
          child: Container(
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      height: 50,
                      width: 50,
                      child: Image.asset("asset/search-3.png")),
                  Text("Google ile giriş yap",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),)
                ],),
            ),
            decoration: BoxDecoration(
                boxShadow: [BoxShadow(color: Colors.black38,offset: Offset(2,2),blurRadius: 10)],
                color: Colors.white,
                borderRadius: BorderRadius.circular(30)
            ),
            width: MediaQuery.of(context).size.width-100,
            height: 80,
          ),
        )
    );
  }
}
