package com.quiztest.QuizApp.Repositories;

import com.quiztest.QuizApp.entities.Question;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository

public interface QuestionRepo extends CrudRepository<Question,Integer> {
}
