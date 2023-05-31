import 'package:flutter/material.dart';
import 'package:micinema/constants/app_colors.dart';

import 'data.dart';
import 'main.dart';
class categories extends StatefulWidget {
  const categories({Key? key}) : super(key: key);

  @override
  State<categories> createState() => _categoriesState();
}

class _categoriesState extends State<categories> {


  @override
  Widget build(BuildContext context) {
    TextStyle HeaderText = TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 18
    );


    return  Scaffold(
      backgroundColor: AppColors().backgroun_of_pages,
      appBar: AppBar(
        backgroundColor: AppColors().secondary_black,
        title: Container(
            height: 150,
            width: 150,
            child: Image.asset('images/MiCinema-logo2.png')),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [

                Container(
                  height: 800,
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
                                  Text(CategoriesTextList[index].CategoryText,style: HeaderText,),

                                  Text('More',style: TextStyle(color: Colors.white,),)
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
                                          image: NetworkImage(newFilmsLst
                                          [index].images ),),
                                      ),
                                    );
                                  }),
                            )
                          ],
                        );}),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
