import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {



  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp( debugShowCheckedModeBanner: false,
    home: Screen(),
    );}}
class Screen extends StatefulWidget{double calc=0;

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  final TextEditingController _textController =TextEditingController();
  final TextEditingController _textController2 =TextEditingController();  double calc=0; double calco=0;
 bool male=true;bool female=true;
double calcualte( double height,double weight){
    calc=(height*height)/weight;
calcualte
    ;
    return calc;
  }
  double calculateBMI(){
    double height =double.parse(_textController.text);
    double weight=double.parse(_textController2.text);
    calc=weight/(height*height);
    calco=calc*10000;
    print(calco);
    return calco;
  }
  @override
dynamic s='';
  dynamic classification( dynamic str){ setState(() {

    if(calco>=18.5&& calco<=24.9)
     str="You are normal weight";
    else  if(calco>=25&& calco<=29.9)
     str= "You are over weight";
    else  if(calco<18.5)
      str="You are under weight";
    else
      str="oppsss!!!";
    return str;
  });
s=str;
print(s);
  }
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold( backgroundColor: Color.fromRGBO(23, 22, 62, 1),
appBar: AppBar(title: Text("BMI Calculator",),backgroundColor: Color.fromRGBO(35, 38, 86,0.98),actions: [IconButton(onPressed: (){}, icon: Icon(Icons.settings))],
) ,body:Column(  children:[ SizedBox(height: 22,), Row( children:[
        SizedBox(height: 30,width: 40,),

    InkWell(   onTap: (){female=true;
      male=false;
    },
      child:Container( child: Icon(Icons.female,color: Colors.pinkAccent,size: 100,),width:female?140:150 ,height:female?140:150,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Color.fromRGBO(35, 38, 86,0.98))),
      borderRadius: BorderRadius.circular(10),
 splashColor: Colors.blue,focusColor: Colors.blue,highlightColor: Colors.blue,
    ),
SizedBox(height: 20,width: 40,),
          InkWell(  onTap: (){male=true;
            female=false;

          }, child:Container( child: Icon(Icons.male,color: Colors.blue,size: 100,),width: male?140:150,height: male?140:150,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Color.fromRGBO(35, 38, 86,0.98)),),
            borderRadius: BorderRadius.circular(10),
            splashColor: Colors.blue,focusColor: Colors.blue,highlightColor: Colors.blue,
            )
        ] )
     , SizedBox(height: 40,) ,
          Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Color.fromRGBO(35, 38, 86,0.98)), padding: EdgeInsets.fromLTRB(40,20,40,10) ,width: 400,height: 110, child:
          TextFormField(style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold,),textAlign:TextAlign.center ,
            controller: _textController,
            decoration: const InputDecoration(

              border: UnderlineInputBorder(),

              labelText: "Your height in Cm ",labelStyle: TextStyle(
                color: Colors.white,
                fontSize: 30
            ) ,fillColor: Colors.white,hoverColor: Colors.white,floatingLabelAlignment:FloatingLabelAlignment.center
,
     ) ) ),SizedBox(height: 22,),
        Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Color.fromRGBO(35, 38, 86,0.98)), padding: EdgeInsets.fromLTRB(40,20,40,10) ,width: 400,height: 110 ,child:
    TextFormField(style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold,),textAlign:TextAlign.center ,
        controller: _textController2,
    decoration: const InputDecoration(

        labelText: "Your weight in Cm ",labelStyle: TextStyle(
      color: Colors.white,
      fontSize: 30,

    ),
     hoverColor: Colors.white,floatingLabelAlignment:FloatingLabelAlignment.center
    ,))),SizedBox(height: 40,),
      Text("Your BMI",style: TextStyle(fontSize: 30,color: Colors.white),) ,
        Text (calco.toString(),style: TextStyle(fontSize: 50,color: Colors.white),
        ),Text( s.toString(),style: TextStyle(fontSize: 20,color: Colors.white),),
        SizedBox(height: 10,),
        Container( child:
    ElevatedButton(
      onPressed:()

    {
      double calculateBMI(){
      double height=double.parse(_textController.text);
      double weight=double.parse(_textController2.text);
      calc=(weight/(height*height));
      calco=calc*10000;
      calco=double.parse((calco).toStringAsFixed(2));
      return calco;
    }
      setState(() {

calculateBMI();

if(calco>=18.5&& calco<=24.9)
  s="You have normal weight";
else  if(calco>=25&& calco<=29.9)
  s= "You have over weight";
else  if(calco<18.5)
  s="You are under weight";
else
  s="oppsss!!!";

      });
    }
          , child:Text("Calculate",style: TextStyle(fontSize: 25),),style: ButtonStyle(padding: MaterialStateProperty.all(EdgeInsets.fromLTRB( 140, 15, 140, 15)),backgroundColor: MaterialStateProperty.all(Colors.deepPurple)),
      ),),
        ]));

}}