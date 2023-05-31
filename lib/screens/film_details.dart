
import 'package:flutter/material.dart';
import 'package:micinema/constants/app_colors.dart';

import 'data.dart';

class FilmDetails extends StatefulWidget {
  const FilmDetails({Key? key}) : super(key: key);

  @override
  State<FilmDetails> createState() => _FilmDetailsState();
}

class _FilmDetailsState extends State<FilmDetails> {
  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
  }
  @override
  Widget build(BuildContext context) {
    bool click;
    return MaterialApp(
      home: Scaffold(
        backgroundColor: AppColors().backgroun_of_pages,
        body: ListView(
          children: [
            Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          height: 350,
                          width: double.infinity,
                          color: Colors.white,
                          child: Image(
                            fit: BoxFit.fill,
                            image: NetworkImage(newFilmsLst[0].images),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  Color(0xffD9D9D9).withOpacity(0.3),
                                  Color(0xff171717).withOpacity(0.5),
                                ],
                              )),
                          height: 350,
                          width: double.infinity,
                        ),
                        Icon(
                          Icons.play_arrow,
                          color: Colors.white,
                          size: 60,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Icon(
                              Icons.thumb_up,
                              color: (click=true)? Colors.blue : Colors.white,
                              size: 30,
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              '12',
                              style: TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.thumb_down,
                              color: Colors.white,
                              size: 30,
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              '0',
                              style: TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.share,
                              color: Colors.white,
                              size: 30,
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              '12',
                              style: TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.favorite,
                              color: Colors.white,
                              size: 30,
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              '12',
                              style: TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text('4055',style: TextStyle(color: Colors.white),),
                            Text('Views',style: TextStyle(color: Colors.white),),
                          ],
                        ),
                        Column(
                          children: [
                            Text('2023',style: TextStyle(color: Colors.white),),
                            Text('Relased',style: TextStyle(color: Colors.white),),
                          ],
                        ),
                        Column(
                          children: [
                            Text('1h 3m',style: TextStyle(color: Colors.white),),
                            Text('Relased',style: TextStyle(color: Colors.white),),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Text('Crime',style: TextStyle(
                              color: Colors.white,),),
                            SizedBox(width: 5,),
                            Icon(Icons.circle,color: AppColors().fayozi_color,size: 6,),
                            SizedBox(width: 5,),
                            Text('Crime',style: TextStyle(
                              color: Colors.white,),),
                            SizedBox(width: 5,),
                            Icon(Icons.circle,color: AppColors().fayozi_color,size: 6,),
                            SizedBox(width: 6,),
                            Text('Crime',style: TextStyle(
                              color: Colors.white,),),


                          ],
                        ),
                      ],),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('OverView',style:TextStyle(
                          color: Colors.white,fontSize: 20
                      ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text('the The events revolve around Hans and Nick and their '
                          'attempts to open an intelligence agency responsible for opening '
                          'investigations regarding kidnapped people all over the world.',
                        style:TextStyle(
                            color: Colors.white,fontSize: 16
                        ),
                      ),
                    ),
                  ],
                ),

                Positioned(
                  top: 250,
                  left: 20,
                  child: Container(
                    height: 180,
                    width: 140,
                    color: Colors.white,
                    child: Image(
                      fit: BoxFit.fill,
                      image: NetworkImage(newFilmsLst[0].images),
                    ),
                  ),
                ),
                Positioned(
                    top: 360,
                    left: 170,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Name of film ',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          '( 7.0)',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ],
                    )),


              ],
            ),

          ],
        ),
      ),
    );
  }
}
