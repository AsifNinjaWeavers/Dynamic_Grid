import 'package:flutter/material.dart';


class GridBox extends StatefulWidget {
  const GridBox({super.key});

  @override
  State<GridBox> createState() => _GridBoxState();
}

class _GridBoxState extends State<GridBox> {
  int counta =2;

                  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(5),
          color: Colors.orange,
           height:  MediaQuery.of(context).size.height/1.5,
                      width: MediaQuery.of(context).size.width/1,
          child: GridView.count(
            crossAxisCount: counta,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            children: moregrid(height: MediaQuery.of(context).size.height/40*counta,width:MediaQuery.of(context).size.width/40*counta,count:counta*counta),
          )
         
        ),
    ));
  }
 
  List<Widget> moregrid({required double height,required double width,required int count})
  {
    Widget a= GestureDetector(
      onTap: ()=>setState(() {
       counta=counta+1;
        debugPrint(counta.toString());
      }),
       child: Container(
                     height: height,
                     width: width,
                        color: Colors.black,),
     );
     List<Widget>te=[
      ];
     for(int i=0;i<count;i++)
     {
      te.add(a);
     }
          return te;
    
  }
}