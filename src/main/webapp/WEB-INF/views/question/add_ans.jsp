<%@ page language="java" contentType="text/html;charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>

<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Home page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
</head>
<body>

<h3>Quiz</h3>

<div class="container mt-5">
    <div class="row">
        <div class="col-md-6 offset-md-3">
            <div class="card">
                <div class="card-body">
                    <h4 class="text-center text-primary">Add Document</h4>
                    <form action="/question/ans" method="post" >

                        <div class="form-group mb-3">
                            <input type="text"
                                   class="form-control" name="content" placeholder="a javob" >
                        </div>
                        <div class="form-check">
                            <input type="checkbox"
                                   class="form-check-input" name="correct" value="1" placeholder="to'grimi" >
                        </div>
                        <div class="form-group mb-3">
                            <input type="number"
                                   class="form-control" name="question_id" placeholder="Savol Id raqami">
                        </div>
                        <div class="form-group mb-3">
                            <input type="text"
                                   class="form-control" name="content" placeholder="b javob" >
                        </div>
                        <div class="form-check">
                            <input type="checkbox"
                                   class="form-check-input" name="correct" value="1" placeholder="to'grimi" >
                        </div>
                        <div class="form-group mb-3">
                            <input type="number"
                                   class="form-control" name="question_id" placeholder="Savol Id raqami">
                        </div>
                        <div class="form-group mb-3">
                            <input type="text"
                                   class="form-control" name="content"  placeholder="c javob" >
                        </div>
                        <div class="form-check">
                            <input type="checkbox"
                                   class="form-check-input" name="correct" value="1" placeholder="to'grimi" >
                        </div>
                        <div class="form-group mb-3">
                            <input type="number"
                                   class="form-control" name="question_id" placeholder="Savol Id raqami">
                        </div>

                        <div class="form-group mt-3">
                            <button class="btn btn-success btn-block-5 mt-3">Save</button>
                        </div>

                    </form>
                </div>
            </div>
        </div>
    </div>
</div>



<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js" integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-kjU+l4N0Yf4ZOJErLsIcvOU2qSb74wXpOhqTvwVx3OElZRweTnQ6d31fXEoRD1Jy" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>




</body>
</html>