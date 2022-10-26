import 'package:flutter/material.dart';


class GridBox extends StatefulWidget {
  const GridBox({super.key});

  @override
  State<GridBox> createState() => _GridBoxState();
}

class _GridBoxState extends State<GridBox> {
  int gridCount =2;

                  
  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(5),
          color: Colors.orange,
          height: height/1.5,
          width: width/1,
          child: GridView.count(
            crossAxisCount: gridCount,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            children: allListGrid(
              height:height /40*gridCount,
              width:width/40*gridCount,
              count:gridCount*gridCount
              ),
          )
         
        ),
    ),);
  }
 
  List<GestureDetector> allListGrid({required double height,required double width,required int count})
  {
    GestureDetector a= GestureDetector(
      onTap: ()=>setState(() {
       gridCount=gridCount+1;
      }),
       child: Container(
                     height: height,
                     width: width,
                        color: Colors.black,),
     );
     List<GestureDetector>allListGrid=[];
     for(int i=0;i<count;i++)
     {
      allListGrid.add(a);
     }
    return allListGrid;
  }
}