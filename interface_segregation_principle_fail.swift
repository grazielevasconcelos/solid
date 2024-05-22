class Test {
  let questions: [Question]
  init(testQuestions: [Question]) {
    questions = testQuestions
  }

  func answerQuestion(questionNumber: Int, choice: Int) {
    questions[questionNumber].answer(choice)
  }

  func gradeQuestion(questionNumber: Int, correct: Bool) {
    question[questionNumber].grade(correct)
  }
}

class User {
  func takeTest(test: Test) {
    for question in test.questions {
      test.answerQuestion(question.number, arc4random(4))
    }
  }
}