package com.quiztest.QuizApp.Controllers;
import com.quiztest.QuizApp.Services.AnswerService;
import com.quiztest.QuizApp.Services.QuestionService;
import com.quiztest.QuizApp.entities.Answer;
import com.quiztest.QuizApp.entities.Question;
import com.quiztest.QuizApp.forms.QuestionEditForm;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.HashMap;

@Controller
@RequestMapping("question")
public class QuestionController {

    @Autowired
    private QuestionService questionService;

    @Autowired
    private AnswerService answerService;

    @GetMapping

    public String index(ModelMap modelMap){

        modelMap.put("questions",questionService.findAll());
        return "question/index";
    }

    @PostMapping("/submit")
    public String submit(HttpServletRequest request){

        int score = 0;
        String []questionIds = request.getParameterValues("questionId");
        for (String questionId : questionIds){
          int answerIdCorrect = questionService.findAnswerIdCorrect(Integer.parseInt(questionId));
            if (answerIdCorrect == Integer.parseInt(request.getParameter("question_" + questionId))){
                score++;
            }
        }
        request.setAttribute("score",score);
        return "question/result";
    }

    @GetMapping("add_ques")
    public String AddQues(){
        return "question/add_ques";
    }

    @GetMapping("/test")
    public String GetTest() {
        return "question/add_test";
    }

    @PostMapping("/test")
    public String PostTest(QuestionEditForm form) {
        Question q = questionService.save(form.getQuestion());

        for(int i = 0; i < form.getAnswers().size(); i++) {
            Answer a = form.getAnswers().get(i);
            a.setId(null);
            a.setQuestion(q);
            answerService.saves(a);
        }
        return "question/add_test";
    }
}
































