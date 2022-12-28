package com.quiztest.QuizApp.Services;

import com.quiztest.QuizApp.Repositories.AnswerRepo;
import com.quiztest.QuizApp.entities.Answer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AnswerService {

    @Autowired
    private AnswerRepo answerRepo;

    public Answer saves(Answer answer){
        return answerRepo.save(answer);
    }

}
