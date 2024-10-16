import 'package:flutter/material.dart';

void main()
{
  runApp(basketball());
}

 
class basketball extends StatefulWidget {
  
  @override
  State<basketball> createState() => _basketballState();
}

class _basketballState extends State<basketball> {
int teamA_Points=0;
int teamB_Points=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(backgroundColor: const Color.fromRGBO(255, 152, 0, 1),title: Text('BasketBall' , style: TextStyle(
           color: Colors.black,)
           ,)
           ,),
        body: Column(
          children: [
            SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                   
                   Text('Team A' , style: TextStyle(color: Colors.black, fontSize:25,),) ,
                   Text('$teamA_Points',style: TextStyle(color: Colors.black,fontSize: 150),),
                  
                   ElevatedButton(onPressed: (){
                    setState(() {
                      teamA_Points++;
                    });
                   } ,child:Text('add 1 point' , style: TextStyle( 
                   color: Colors.black), ),
                   style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                   ),
                   ),
                   SizedBox(height: 10,),
                
                    ElevatedButton(onPressed: (){
                      setState(() {
                      teamA_Points+=2;
                    });}, child:Text('add 2 point' , style: TextStyle(
                   color: Colors.black),),style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,),
                   ), 
                   SizedBox(height: 10,),

                    ElevatedButton(onPressed: (){
                      setState(() {
                      teamA_Points+=3;
                    });
                    }, child:Text('add 3 point' , style: TextStyle(
                   color: Colors.black),),style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,),
                   ),
                    
                   
                  ],
                ),
                SizedBox(
                  height: 300,
                  child: VerticalDivider(thickness: 3,),
                ),
                Column(
                  children: [
                   
                   Text('Team B' , style: TextStyle(color: Colors.black, fontSize:25,),) ,
                   Text('$teamB_Points',style: TextStyle(color: Colors.black,fontSize: 150),),
                
                   ElevatedButton(onPressed: (){
                    setState(() {
                      teamB_Points++;
                    });
                   } ,child:Text('add 1 point' , style: TextStyle( 
                   color: Colors.black), ),
                   style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                   ),
                   ),
                SizedBox(height: 10,),

                    ElevatedButton(onPressed: (){
                      setState(() {
                      teamB_Points+=2;
                    });
                    }, child:Text('add 2 point' , style: TextStyle(
                   color: Colors.black),),style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,),
                   ), 
                   SizedBox(height: 10,),
                   
                    ElevatedButton(onPressed: (){
                      setState(() {
                      teamB_Points+=3;
                    });
                    }, child:Text('add 3 point' , style: TextStyle(
                   color: Colors.black),),style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,),
                   ),
                    
                   
                  ],
                ),
              ],
              
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(onPressed: (){
              setState(() {
                      teamA_Points=0;
                      teamB_Points=0;
                    });
            }, child:Text('Reset' , style: TextStyle(
                   color: Colors.black),),style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,),
                   ), ],
        ),

      ),
    ); 
  }
}