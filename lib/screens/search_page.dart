import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import 'data.dart';
import 'main.dart';
import 'more.dart';
class search_page extends StatefulWidget {
  const search_page({Key? key}) : super(key: key);

  @override
  State<search_page> createState() => _search_pageState();
}

class _search_pageState extends State<search_page> {


  @override
  Widget build(BuildContext context) {
    TextStyle HeaderText = TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 18
    );


    return  Scaffold(
backgroundColor: AppColors().backgroun_of_pages,
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(12),
                height: 60,width: 450,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColors().secondary_black,
                ),
                child: Row(
                  children: [
                    Icon(Icons.search,color: Colors.white,),
                    SizedBox(width: 12,),
                    Text('Search here',style: HeaderText,)
                  ],
                ),
                alignment: Alignment.centerLeft,
              ),
              Container(
                height: 500,
                child: ListView.builder(
                  itemCount: SearchTextList.length,
                    itemBuilder: (BuildContext conext, int index){
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(SearchTextList[index].SearchTitleList,style: HeaderText,),

                                GestureDetector(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder:
                                        (context)=>MoreScreen(
                                          screenTitle: (SearchTextList[index].SearchTitleList),
                                        )));
                                  },
                                    child: Text('More',style: TextStyle(color: Colors.white,),))
                              ],
                            ),

                          ),
                         Container(
                           height:222,width:double.infinity,
                           child: ListView.builder(
                             scrollDirection: Axis.horizontal,
                               itemCount: newFilmsLst.length,
                               itemBuilder: (BuildContext context, int index ){

                             return Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: Container(
                                 height: 222,width: 150,
                                 child: Image(
                                   fit: BoxFit.fill,
                                   image: NetworkImage(newFilmsLst[index].images),),
                               ),
                             );
                           }),
                         ),
                        ],
                      );}),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
