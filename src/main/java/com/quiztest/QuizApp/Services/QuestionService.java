package com.quiztest.QuizApp.Services;

import com.quiztest.QuizApp.entities.Answer;
import com.quiztest.QuizApp.entities.Question;

public interface QuestionService {

    public Iterable<Question> findAll();
    public int findAnswerIdCorrect(int questionId);

    Question save(Question question);

}
