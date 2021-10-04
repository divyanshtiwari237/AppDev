import 'package:flutter/material.dart';
import 'QuestionAnswerObject.dart';
import 'questionlist.dart';




void main()=>runApp( MaterialApp(
  home: QuestionList(),
));

class QuestionList extends StatefulWidget {
  const QuestionList({Key? key}) : super(key: key);

  @override
  _QuestionListState createState() => _QuestionListState();


}

class _QuestionListState extends State<QuestionList> {
  
  List<QuestionAnswerObject> q =QuestionList1().getlist;

  int i=0;
  int score =0;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment:MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Text(
                 q[i].question,
                 style: TextStyle(
                   color: Colors.redAccent
                       
                 ),
              ),
            ],
          ),
          Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    if(i<3) {
                      i = i + 1;
                    }
                    else{
                      i=0;
                      score =0;
                    }
                    if(qna[i].answer == 'True'){
                       score=score+1;

                    }
                  });
                },
                child:Text('True'),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    if(i<3) {
                      i = i + 1;
                    }
                    else{
                      i=0;
                      score =0;
                    }
                    if(qna[i].answer == 'False'){
                      score=score+1;

                    }
                  });
                },
                child:Text('False'),
              ),

            ],
          ),
          Column(
            children: [
              Text(
                'Score: $score/4',
                style: TextStyle(
                  color:Colors.redAccent,
                ),

              ),
            ],
          ),

        ],



      ),
    );
  }
}




