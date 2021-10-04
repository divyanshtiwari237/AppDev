import 'QuestionAnswerObject.dart';

class QuestionList1{
  static List<QuestionAnswerObject> qna =[
    QuestionAnswerObject(question:'Cats are carnivores',answer:'True'),
    QuestionAnswerObject(question:'Friends is the best show',answer:'False'),
    QuestionAnswerObject(question:'Lines are curved',answer:'True'),
    QuestionAnswerObject(question:'If you can play it slowly,you can play it quickly',answer:'False'),
  ];

  QuestionList1();

    List<QuestionAnswerObject>get getlist {
    return qna;
  }

}