import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
class profile_page extends StatefulWidget {
  const profile_page({Key? key}) : super(key: key);

  @override
  State<profile_page> createState() => _profile_pageState();
}

class _profile_pageState extends State<profile_page> {
  @override
  Widget build(BuildContext context) {
    TextStyle HeaderText = TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 18
    );
    return Scaffold(
      backgroundColor: AppColors().backgroun_of_pages,
      // appBar: AppBar(
      //   backgroundColor: ColorSelect().secondary_black,
      //   title:Container(
      //       height: 150,
      //       width: 150,
      // ),
      //       child: Image.asset('images/MiCinema-logo2.png')),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(22),
            padding: EdgeInsets.all(12),
            height: 200,width: 500,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: AppColors().secondary_black,
            ),child: Column(
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 40,

                      ),
                      SizedBox(width: 12,),
                      Column(
                        children: [
                          Text(' Haneen Amer ',style: HeaderText,),
                          SizedBox(height: 5,),
                          Text(' email@gmil.com',style: TextStyle(
                            color: Colors.white,
                          ),),
                        ],
                      ),
                    ],
                  ),
                  //SizedBox(height: 80,),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: ListTile(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.black, width: 3),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      title: Text('language',style: TextStyle(color: Colors.white)),
                      subtitle: Text('English',style: TextStyle(color: Colors.white),),
                      trailing:Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,size: 18,),
                      leading: Icon(Icons.language,color: Colors.white,size:28 ,),

                    )
                  )
                ],
              ),
            ],
          ),
          ),
        ],
      ),
    );
  }
}
