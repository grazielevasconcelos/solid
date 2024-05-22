protocol QuestionAnswering {
  var questions: [Question] { get }
  func answerQuestion(questionNumber: Int, choice: Int)
}

class Test: QuestionAnswering {
  let questions: [Question]
  init(testQuestions: [Question]) {
    self.questions = testQuestions
  }

  func answerQuestion(questionNumber: Int, choice: Int) {
    questions[questionNumber].answer(choice)
  }

  func gradeQuestion(questionNumber: Int, correct: Bool) {
    question[questionNumber].grade(correct)
  }
}

class User {
  func takeTest(test: QuestionAnswering) {
    for question in test.questions {
      test.answerQuestion(question.number, arc4random(4))
    }
  }
}