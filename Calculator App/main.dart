import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

double math(String s1,String s2,String op){
  double num=3;
  int l1=s1.length;
  int l2=s2.length;
  double num1=double.parse(s1);
  double num2=double.parse(s2);

  if(op=='+'){
    num=num1+num2;
  }
  if(op=='-'){
    num=num1-num2;
  }
  if(op=='*'){
    num=num1*num2;
  }
  if(op=='/'){
    num=num1/num2;
  }
  return num;

}


void main() => runApp(MaterialApp(
  home: Home(),

));
class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String num1='';
  String num2='';
  double result=3;
  int flag=0;
  String op='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Calculator"),

        backgroundColor: Colors.blue[600],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Container(
                child:Text(
                    "$result",
                  style:TextStyle(fontSize:30),
                  textAlign: TextAlign.right,
                ),


                color: Colors.blue,
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(

                children: [
                  Expanded(
                    child: ElevatedButton(
                        onPressed:(){
                         setState(() {
                            if(flag==0){
                              num1=num1+'7';
                            }
                            else{
                              num2=num2+'7';
                            }
                          });
                        },
                      child:Text("7"),



                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed:(){
                        setState(() {
                          if(flag==0){
                            num1=num1+'8';
                          }
                          else{
                            num2=num2+'8';
                          }
                        });
                      },
                      child:Text("8"),


                    ),
                  ),
                  
                  Expanded(
                    child: ElevatedButton(
                      onPressed:(){
                        setState(() {
                          if(flag==0){
                            num1=num1+'9';
                          }
                          else{
                            num2=num2+'9';
                          }
                        });
                      },
                      child:Text("9"),


                    ),
                  ),
                  
                  Expanded(
                    child: ElevatedButton(
                      onPressed:(){
                        setState(() {
                          op='/';
                          flag=1;
                        });


                      },
                      child:Text("/"),


                    ),
                  ),
                ],


              ),
              Row(
                children: [
                  Expanded(
                  child: ElevatedButton(
                    onPressed:(){
                      setState(() {
                        if(flag==0){
                          num1=num1+'4';
                        }
                        else{
                          num2=num2+'4';
                        }
                      });
                    },
                    child:Text("4"),



                  ),
                ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed:(){
                        setState(() {
                          if(flag==0){
                            num1=num1+'5';
                          }
                          else{
                            num2=num2+'5';
                          }
                        });
                      },
                      child:Text("5"),


                    ),
                  ),

                  Expanded(
                    child: ElevatedButton(
                      onPressed:(){
                        setState(() {
                          if(flag==0){
                            num1=num1+'6';
                          }
                          else{
                            num2=num2+'6';
                          }
                        });
                      },
                      child:Text("6"),


                    ),
                  ),

                  Expanded(
                    child: ElevatedButton(
                      onPressed:(){
                        setState(() {
                          op='*';
                          flag=1;
                        });
                      },
                      child:Text("*"),


                    ),
                  ),

                ],


              ),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed:(){
                        setState(() {
                          if(flag==0){
                            num1=num1+'1';
                          }
                          else{
                            num2=num2+'1';
                          }
                        });
                      },
                      child:Text("1"),



                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed:(){
                        setState(() {
                          if(flag==0){
                            num1=num1+'2';
                          }
                          else{
                            num2=num2+'2';
                          }
                        });
                      },
                      child:Text("2"),


                    ),
                  ),

                  Expanded(
                    child: ElevatedButton(
                      onPressed:(){
                        setState(() {
                          if(flag==0){
                            num1=num1+'3';
                          }
                          else{
                            num2=num2+'3';
                          }
                        });
                      },
                      child:Text("3"),


                    ),
                  ),

                  Expanded(
                    child: ElevatedButton(
                      onPressed:(){
                        setState(() {
                          op='-';
                          flag=1;
                        });
                      },
                      child:Text("-"),


                    ),
                  ),

                ],

              ),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed:(){
                        setState(() {
                          if(flag==0){
                            num1=num1+'0';
                          }
                          else{
                            num2=num2+'0';
                          }
                        });

                      },
                      child:Text("0"),



                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed:(){
                        setState(() {
                          result=0;
                          num1='';
                          num2='';
                          flag=0;
                });
                      },
                      child:Text("clear"),


                    ),
                  ),

                  Expanded(
                    child: ElevatedButton(
                      onPressed:(){
                        setState(() {
                          result =math(num1,num2,op);
                          flag=0;
                          num1='';
                          num2='';
                        });
                      },
                      child:Text("="),


                    ),
                  ),

                  Expanded(
                    child: ElevatedButton(
                      onPressed:(){
                        setState(() {
                          op='+';
                          flag=1;
                        });
                      },
                      child:Text("+"),


                    ),
                  ),

                ],

              ),


            ],

          ),

        ],

      ),




    );
}
}





