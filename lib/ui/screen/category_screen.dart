import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:people_peace_solution/repository/remote_repo.dart';
import 'package:people_peace_solution/ui/provider/category_provider.dart';
import 'package:people_peace_solution/ui/screen/profile_screen.dart';
import 'package:people_peace_solution/ui/widget/category_widget.dart';
import 'package:provider/provider.dart';
import 'package:after_layout/after_layout.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> with AfterLayoutMixin<Category> {
  List <Widget> pages;
  CategoryProvider _categoryProvider;
  List<Widget> widgetList;
  int selected=0;

  @override
  void afterFirstLayout(BuildContext context)async {

  }

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }





  @override
  Widget build(BuildContext context) {
    _categoryProvider=Provider.of<CategoryProvider>(context);

    widgetList=[
    Category_widget(categoryProvider: _categoryProvider,),
      Category_widget(categoryProvider: _categoryProvider,),
      Profile_Screen()
    ];
    return Scaffold(

      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,

            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Padding(
                  padding: const EdgeInsets.only(bottom:30.0),
                  child: IconButton(icon: Icon(Icons.home_outlined,size: 50,color: Colors.grey.shade400,), onPressed: (){
                    setState(() {
                      selected=0;

                    });

                  }),
                ),
                SizedBox(width: 200,),

                Padding(
                  padding: const EdgeInsets.only(bottom:30.0),
                  child: IconButton(icon: Icon(Icons.person_outline_rounded,size: 50,color: Colors.grey.shade400,), onPressed: (){
                    setState(() {
                      selected=2;
                    });
                  }),
                ),
              ],)
            ],
          ),
        ),

      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton:Container(
        height: 80,
        width: 80,
        child: FloatingActionButton(
          backgroundColor: Colors.blueAccent.shade700,
          child: Container(
            height: 40,
            width: 40,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage( "asset/bagis_el_icon.png")
                )
              ),
              ),
          onPressed: (){
            setState(() {
              selected=1;
            });
          },
        ),
      ) ,
      body: widgetList[selected]

    );
  }


}

