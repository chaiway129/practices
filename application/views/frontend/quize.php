<?php $this->load->view('frontend/header'); ?>
<style>
/** {
  margin: 0px;
  padding: 0px;
  font: 16px 'Source Sans Pro', sans-serif;
  border: none;
  box-sizing: border-box;
}

html, body {
  background: #2E706C;
  text-align: center;
  width: 50%;
  height: 50%;
  margin: 5rem;
  bottom: 2rem;
  right: 2rem;
}

html {
  display: table;
}

body {
  display: table-cell;
  vertical-align: middle;
}
*/
#quiz h1{
    font-size: 20px;
    color: #5d5454;
    line-height: 60px;
    text-transform: uppercase;
}
#quiz {
  margin: -20px 50px 0px;
  position: relative;
  width: calc(100% - 100px);
}

/*#quiz h1 {
  color: #FAFAFA;
  font-weight: 600;
  font-size: 36px;
  text-transform: uppercase;
  text-align: left;
  line-height: 44px;
}*/

#quiz button {
 float: left;
    margin: 19px 0px 19px 9px;
    padding: 6px 10px;
    background: #06a9da;
    color: #fff;
    font-size: 14px;
    cursor: pointer;
    outline: none;
    font-weight: bold;

}

#quiz button:hover {
  background: #36a39c;
  color: #FFF;
}

#quiz button:disabled {
 opacity: 0.5;
    background: #06a9da;
    color: #fff;
    cursor: default;
    font-weight: bold;
}

#question {
  padding: 40px;
  background: #FAFAFA;
  text-align: center;
}

#question h2 {
  margin-bottom: 16px;
  font-weight: 600;
  font-size: 20px;
}

#question input[type=radio] {
  display: none;
}

#question label {
  display: inline-block;
  margin: 4px;
  padding: 8px;
  background: #FAE3BB;
  color: #4C3000;
  width: calc(50% - 8px);
  min-width: 50px;
  cursor: pointer;
}

#question label:hover {
  background: #EBBB67;
}

#question input[type=radio]:checked + label {
  background: #CB8306;
  color: #FAFAFA;
}

#quiz-results {
  display: flex;
  flex-direction: column;
  justify-content: center;
  position: absolute;
  top: 44px;
  left: 0px;
  background: #FAFAFA;
  width: 100%;
  height: calc(100% - 44px);
}

#quiz-results-message {
  display: block;
  color: #00403C;
  font-size: 20px;
  font-weight: bold;
}

#quiz-results-score {
  display: block;
  color: #31706c;
  font-size: 20px;
}

#quiz-results-score b {
  color: #00403C;
  font-weight: 600;
  font-size: 20px;
}

#quiz-retry-button {

  float: left;
  margin: 8px 0px 0px 8px;
  padding: 4px 8px;
  background: #9ACFCC;
  color: #00403C;
  font-size: 14px;
  cursor: pointer;
  outline: none;
  
}
/*old*/
/*
    .content-box{ display:none;}
.active-content,.active-content-new{  display:block;}

.left-section ul li a {
    display: block;
    padding: 6px;
    background: #5f5858;
    color: #fff;
    margin-bottom: 7px;
   
    text-align: center;
    font-size: 20px;
    }
.right-section {
    padding: 40px;
    background: #f5f5f5;
}
.active-tab-menu a,.active-tab-menu-new a {
  
    background: #10c5ec !important;
}
.left-section ul li{ list-style-type:none;}
.left-section ul{ padding:0px; margin:0px;}
.custom-button-section a {
    display: block;
    padding: 10px;
    float: left;
  
   background: #10c5ec;
    color: #fff;
    margin-right: 10px;
    width: 100px;
    text-align: center;
    font-weight: bold;

}
.button-row:after {
    content: "";
    clear: both;
    display: block;
}
.button-row {
    margin-top: 36px;
}
.Hide-this{ display:none;}
.content-box h1{
        font-size: 20px;
    color: #5d5454;
    line-height: 60px;
    text-transform: uppercase;
}*/

    </style>

        <section class="banner inner-page">
            <div class="banner-img"><img src="images/banner/quiz.jpg" alt=""></div>
            <div class="page-title">    
                <div class="container">
                    <h1>Quiz</h1>
                </div>
            </div>
        </section>
        <section class="breadcrumb white-bg">
            <div class="container">
                <ul>
                    <li><a href="#">Home</a></li>
                    <li><a href="#">Quiz</a></li>
                </ul>
            </div>
        </section>
        
  <section class="quiz-view">
            <div class="container">
                <div class="quiz-title">
                    <h2>General Quiz</h2>
                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                </div>
                <div class="row">
                    <form action="#" method="post">
                    <div class="col-sm-4 col-md-3 login-view">
                        <div class="input-box">
                            <input type="text" placeholder="Name" name="name" id="name" required="">
                        </div>
                        <div class="input-box">
                            <input type="email" placeholder="Email" name="email" id="email" required="">
                        </div>
                    </div>
                    <div class="col-sm-8 col-md-9">
                        <div class="quiz-intro">
                            <h3>Introduction</h3>
                            <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their </p>
                            <div class="start-btn">
                                <button type="submit" class="btn">Start Quizz</button>
                            </div>
                        </div>
                    </div>
                </form>
                </div>
            </div>
        </section>
     <div class="container final_quiz hide">
          <div class="row">
             <div class="col-sm-12 multistep-form-section">
                <div id="quiz">
                      <h1 id="quiz-name"></h1>
                      <button id="submit-button">Submit Answers</button>
                      <button id="next-question-button">Next Question</button>
                      <button id="prev-question-button">Previous</button>
                      
                      <div id="quiz-results">
                        
                        <p id="quiz-results-message"></p>
                        <p id="quiz-results-score"></p>
                        <button id="quiz-retry-button">Retry</button>
                        
                      </div>
                </div>
                      
             </div>

          </div>

        </div>


 


<?php $this->load->view('frontend/footer'); ?>


<script type="text/javascript">
var  name ='';
var email='';
$("form").submit(function(event){
   event.preventDefault();
  name = $("#name").val();
  email = $("#email").val();
  $('.quiz-view').addClass('hide');
  $('.final_quiz').removeClass('hide');

});

var ques_data = <?php echo $ques; ?>;
console.log(ques_data.results);

var all_questions=ques_data.results;

var Quiz = function(quiz_name) {
  this.quiz_name = quiz_name;
  this.questions = [];
}

Quiz.prototype.add_question = function(question) {
  var index_to_add_question = Math.floor(Math.random() * this.questions.length);
  this.questions.splice(index_to_add_question, 0, question);
}

Quiz.prototype.render = function(container) {
  var self = this;
  $('#quiz-results').hide();
  $('#quiz-name').text(this.quiz_name);
  var question_container = $('<div>').attr('id', 'question').insertAfter('#quiz-name');

  function change_question() {
    self.questions[current_question_index].render(question_container);
    $('#prev-question-button').prop('disabled', current_question_index === 0);
    $('#next-question-button').prop('disabled', current_question_index === self.questions.length - 1);

    var all_questions_answered = true;
    for (var i = 0; i < self.questions.length; i++) {
      if (self.questions[i].user_choice_index === null) 
      {
        all_questions_answered = false;
        break;
      }
    }
    $('#submit-button').prop('disabled', !all_questions_answered);
  }
  
  var current_question_index = 0;
  change_question();

  $('#prev-question-button').click(function() {
    if (current_question_index > 0) {
      current_question_index--;
      change_question();
    }
  });
  
  $('#next-question-button').click(function() {
    if (current_question_index < self.questions.length - 1) {
      current_question_index++;
      change_question();
    }
  });
 
  $('#submit-button').click(function() {
    var score = 0;
    console.log(self.questions.length);
     console.log('choices');
  console.log(this.choices);
  
    for (var i = 0; i < self.questions.length; i++) {
      if (self.questions[i].user_choice_index === self.questions[i].correct_option_index) {
        score++;
         console.log('self.questions[i].user_choice_index');
  console.log(self.questions[i].user_choice_index);
   
    console.log('self.questions[i].correct_option_index');
  console.log(self.questions[i].correct_option_index);
   
      }
      
   $('#quiz-retry-button').click(function(reset) {
      quiz.render(quiz_container);
   });
    
    }
    
    var percentage = score / self.questions.length;
   
    var message;
    if (percentage === 1) {
      message = 'Great job!'
    } else if (percentage >= .75) {
      message = 'You did alright.'
    } else if (percentage >= .5) {
      message = 'Better luck next time.'
    } else {
      message = 'Maybe you should try a little harder.'
    }
    $('#quiz-results-message').text(message);
    $('#quiz-results-score').html('You got <b>' + score + '/' + self.questions.length + '</b> questions correct.');
    $('#quiz-results').slideDown();
    $('#submit-button').slideUp();
    $('#next-question-button').slideUp();
    $('#prev-question-button').slideUp();
    $('#quiz-retry-button').slideDown();
console.log(name);
console.log(email);
console.log(score);
    $.ajax({

         type: "POST",
         url: "<?php echo base_url();?>welcome/StoredScore", 
         data: {name:name,email:email,score:score},
         dataType: "json",  
         success: 
              function(res){
                alert(res);  //as a debugging message.
              }
      });
    
  });
  question_container.bind('user-select-change', function() {
    var all_questions_answered = true;
    for (var i = 0; i < self.questions.length; i++) {
      if (self.questions[i].user_choice_index === null) {
        all_questions_answered = false;
        break;
      }
    }
    $('#submit-button').prop('disabled', !all_questions_answered);
  });
}
var Question = function(question_string, correct_option, wrong_options) {
  this.question_string = question_string;
  this.choices = [];
 
  this.user_choice_index = null;
  console.log(correct_option);
  console.log(wrong_options);
  
  this.correct_option_index = Math.floor(Math.random(0, wrong_options.length + 1));
  
  var number_of_option = wrong_options.length + 1;
  for (var i = 0; i < number_of_option; i++) {
    if (i === this.correct_option_index) {
      this.choices[i] = correct_option;
    } else {
      var wrong_choice_index = Math.floor(Math.random(0, wrong_options.length));
      this.choices[i] = wrong_options[wrong_choice_index];
      wrong_options.splice(wrong_choice_index, 1);
    }
  }
}
Question.prototype.render = function(container) {
  var self = this;
  var question_string_h2;
  if (container.children('h2').length === 0) {
    question_string_h2 = $('<h2>').appendTo(container);
  } else {
    question_string_h2 = container.children('h2').first();
  }
  question_string_h2.text(this.question_string);
  if (container.children('input[type=radio]').length > 0) {
    container.children('input[type=radio]').each(function() {
      var radio_button_id = $(this).attr('id');
      $(this).remove();
      container.children('label[for=' + radio_button_id + ']').remove();
    });
  }
  for (var i = 0; i < this.choices.length; i++) {
    var choice_radio_button = $('<input>')
      .attr('id', 'choices-' + i)
      .attr('type', 'radio')
      .attr('name', 'choices')
      .attr('value', 'choices-' + i)
      .attr('checked', i === this.user_choice_index)
      .appendTo(container);
    var choice_label = $('<label>')
      .text(this.choices[i])
      .attr('for', 'choices-' + i)
      .appendTo(container);
  }
  
  
  $('input[name=choices]').change(function(index) {
    var selected_radio_button_value = $('input[name=choices]:checked').val();
    self.user_choice_index = parseInt(selected_radio_button_value.substr(selected_radio_button_value.length - 1, 1));
    container.trigger('user-select-change');
  });
}
$(document).ready(function() {
  var quiz = new Quiz('My Quiz');
  for (var i = 0; i < all_questions.length; i++) {
    var question = new Question(all_questions[i].question, all_questions[i].correct_answer, all_questions[i].incorrect_answers);
    quiz.add_question(question);
  }

  var quiz_container = $('#quiz');
  quiz.render(quiz_container);
});
    
    

</script>
