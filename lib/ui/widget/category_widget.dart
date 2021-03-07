import 'package:flutter/material.dart';
import 'package:people_peace_solution/domain/singletons.dart';
import 'package:people_peace_solution/ui/provider/category_provider.dart';
import 'package:people_peace_solution/utils/routes.dart';

class Category_widget extends StatefulWidget {
  final CategoryProvider categoryProvider;
  const Category_widget({
    this.categoryProvider,
    Key key,
  }) : super(key: key);

  @override
  _Category_widgetState createState() => _Category_widgetState();
}

class _Category_widgetState extends State<Category_widget> {
  CategoryProvider _categoryProvider;
  @override
  void initState() {
      _categoryProvider=widget.categoryProvider;
       _categoryProvider.listOlustur();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:50.0),
      child: GridView.builder(itemCount: _categoryProvider.icons.length,gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:3 ), itemBuilder: (context,index){
        return Padding(
          padding: const EdgeInsets.all(30.0),
          child: InkWell(
            onTap: (){
              if(_categoryProvider.icons[index].photoName=="Sağlıklı gıda"){
                singletons.category="sgida";
              }else if(_categoryProvider.icons[index].photoName=="Geri dönüşüm"){
                singletons.category="gdonusum";
              }else{
                singletons.category=_categoryProvider.icons[index].photoName.toLowerCase();
              }
              Navigator.of(context).pushNamed(Routes.cards);

            },
            child: Container(

              child: Column(
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        child: Container(
                          height: 50,
                          width: 50,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(200),

                          image: DecorationImage(
                              image: AssetImage(_categoryProvider.icons[index].photoPath)),
                        )
                      ),
                    ),

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(200),
                      boxShadow: [BoxShadow(offset: Offset(2,2),color: Colors.black26,blurRadius: 12)],
                      color: Colors.white,

                    ),
                  ),

                  Text(_categoryProvider.icons[index].photoName,style: TextStyle(color: Colors.grey),)
                ],
              ),
            ),
          ),
        );


      }),
    );
  }
}
