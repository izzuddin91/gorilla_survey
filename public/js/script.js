var question_number = 1;
var choice_number = 1


$(document).ready(function() {
   $('#add-question').click(function() {
      $('#question-field').append(
        " <div id='question-"+ question_number + "'>\
          <p>Question</p>\
            <input type='text' name=question["+ question_number + "][text] id='question-title-" + question_number + "' placeholder='question'></input>\
            <div id='choice-field-" + question_number + "'>\
            <p>Choice</p>\
            <input type='text' name=question["+ question_number + "][choice]["+ choice_number + "] placeholder='choice'></input>\
            </div>\
                  <button type='button' class='add-choice'   value='"+ question_number +     "'>Add Choice</button>\
          </div>"

      );
      question_number++;

   });


   $(document).on("click", ".add-choice", function() {
      var questionNumber = $(this).val();
      var choiceNumber = $("#choice-field-" + questionNumber).children('input').length

      choiceNumber++;

      $("#choice-field-" + questionNumber ).append(" <input type='text' name=question["+  questionNumber + "][choice]["+ choiceNumber +"] placeholder='choice'></input>");

   });

});

// $ajax({
// type: "PUT",
// url: "??" + ??
// data: {"question_id": question-title, "answer_id": choice-field }
// })
// .done(function(response){
//   window.location = "/??/" + ???


// })
