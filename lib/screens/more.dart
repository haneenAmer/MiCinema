import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import 'data.dart';


class MoreScreen extends StatefulWidget {
   final String screenTitle;
  const MoreScreen({Key? key, required this.screenTitle}) : super(key: key);

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: AppColors().backgroun_of_pages,
      appBar: AppBar(
        backgroundColor: AppColors().secondary_black,
        title:Text(widget.screenTitle),

      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
        itemCount: moreList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 6,mainAxisExtent: 200,
            crossAxisCount:3),
        itemBuilder: (BuildContext context, int index) {
          return new Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
            height: 322,width: 150,
            child: Image(
              fit: BoxFit.fill,

              image: NetworkImage(moreList[index].images),),
          );

        },
    ),
      ),
    );
  }
}
