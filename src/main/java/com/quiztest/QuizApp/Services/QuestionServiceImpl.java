package com.quiztest.QuizApp.Services;

import com.quiztest.QuizApp.Repositories.AnswerRepo;
import com.quiztest.QuizApp.Repositories.QuestionRepo;
import com.quiztest.QuizApp.entities.Answer;
import com.quiztest.QuizApp.entities.Question;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Set;

@Service("questionService")

public class QuestionServiceImpl implements QuestionService {

    @Autowired
    private QuestionRepo questionRepo;
    private AnswerRepo answerRepo;


    @Override
    public Iterable<Question> findAll() {
        return questionRepo.findAll();
    }

    @Override
    public int findAnswerIdCorrect(int questionId) {
        Question question = questionRepo.findById(questionId).get();
        for (Answer answer : question.getAnswers()) {
            if (answer.isCorrect()) {
                return answer.getId();
            }
        }
        return -1;
    }

    @Override
    public Question save(Question question) {
        return questionRepo.save(question);
    }




}