<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:genericpage>
    <jsp:body>
        <form action="/question/test" method="post" >
            <div class="form-group mb-3">
                <textarea class="form-control" name="question.content" placeholder="Savollarni kiriting" ></textarea>
            </div>
            <div class="input-group mb-3">
                <input type="text" name="answers[0].content" placeholder="Javob A"/>
                <div class="input-group-text">
                    <input name="answers[0].correct" class="form-check-input mt-0" type="checkbox" value="1" />
                </div>
            </div>

            <div class="input-group mb-3">
                <input type="text" name="answers[1].content" placeholder="Javob B"/>
                <div class="input-group-text">
                    <input name="answers[1].correct" class="form-check-input mt-0" type="checkbox" value="1" />
                </div>
            </div>

            <div class="input-group mb-3">
                <input type="text" name="answers[2].content" placeholder="Javob C"/>
                <div class="input-group-text">
                    <input name="answers[2].correct" class="form-check-input mt-0" type="checkbox" value="1" />
                </div>
            </div>

            <button type="submit">Save</button>
        </form>
    </jsp:body>
</t:genericpage>