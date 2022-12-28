package com.quiztest.QuizApp.forms;

import com.quiztest.QuizApp.entities.Answer;
import com.quiztest.QuizApp.entities.Question;

import java.util.ArrayList;

public class QuestionEditForm {
    private Question question;
    private ArrayList<Answer> answers;

    public Question getQuestion() {
        return question;
    }

    public void setQuestion(Question question) {
        this.question = question;
    }

    public ArrayList<Answer> getAnswers() {
        return answers;
    }

    public void setAnswers(ArrayList<Answer> answers) {
        this.answers = answers;
    }
}
