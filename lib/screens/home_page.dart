import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:micinema/dio/dio.dart';
import 'package:micinema/screens/film_details.dart';
import 'package:micinema/service/api.dart';
import '../constants/app_colors.dart';

import 'data.dart';


final dio = Dio();

void getHttp() async {
  final response = await dio.get('https://dart.dev');
  print(response);
}
class home_page extends StatefulWidget {
  const home_page({Key? key}) : super(key: key);
  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  @override
  void initState(){
    DioClient dioClient = DioClient();
    Api api = Api(dioClient);
    var x = api.fetchApiRequest();
    print(x);
    super.initState();
    // getAllTrendyMovies();
  }
  List<String> newFilmsImages = [];

  // Future<TrendMovie?> getAllTrendyMovies () async {
  //   TrendMovie? trendMovie;
  //   try {
  //     Response response = await dio.get(url.toString());
  //     print('Response : ${response.data.toString()}');
  //     trendMovie = TrendMovie.fromJson(response.data);
  //     // return trendMovie;
  //   }
  //   catch (e) {
  //     print(e.toString());
  //   }
  //   return trendMovie;
  // }
  // var url = Uri.https(baseUrl, '/3/trending/movie/day',{
  //   'api_key': apiKey,
  // });

  @override
  Widget build(BuildContext context) {


    TextStyle HeaderText = TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 18
    );
    return Scaffold(
      backgroundColor: AppColors().backgroun_of_pages,
      appBar: AppBar(
        backgroundColor: AppColors().secondary_black,
        title: Container(
            height: 150,
            width: 150,
            child: Image.asset('images/MiCinema-logo2.png')),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(
            children: [
              /// New Films Section
              Container(
                  margin: const EdgeInsets.symmetric(vertical: 8.0),
                  padding: EdgeInsets.only(left: 12),
                  height: 350.0,
                  width: double.infinity,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.all(8),
                      itemCount: newFilmsLst.length,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>FilmDetails()));
                          },
                          child: Stack(
                            children: [

                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 8),
                                //height: 150,
                                width: 350,
                                color: AppColors().backgroun_of_pages,
                                child: Image(
                                  fit: BoxFit.fill,
                                  image: NetworkImage(newFilmsLst[index].images),
                                  // image: NetworkImage(),
                                ),
                              ),
                              Container(decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topRight,
                                    end: Alignment.bottomLeft,
                                    colors: [
                                      Color(0xff171717).withOpacity(0.3),
                                      Color(0xffD9D9D9).withOpacity(0.1),

                                    ],
                                  )
                              ),height: 350,width: 350,),
                            ],
                          ),
                        );
                      })),
              /// Ppoular Films SECTION
              SizedBox(height: 12,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Text('Poplar Films',style: HeaderText,),
                ),
                  Container(
                      margin: const EdgeInsets.symmetric(vertical: 8.0),
                      padding: EdgeInsets.only(left: 12),
                      height: 150,
                      width: double.infinity,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          padding: const EdgeInsets.all(8),
                          itemCount: newFilmsLst.length,
                          itemBuilder: (BuildContext context, int index) {
                            return CircleAvatar(
                              radius: 70,
                              backgroundImage:NetworkImage(
                                  newFilmsLst[index].images

                              ),
                            );
                          })),

              ],),
              ///


            ],
          )
        ],
      ),
    );
  }
}
