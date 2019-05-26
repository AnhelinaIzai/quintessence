class TestsController < ApplicationController
  def index
  end
  
  def start
     total = params[:number].to_i
     all = TestQuestion.all.map {|x| x.id}
     session[:test_questions] = all.sort_by{rand}[0..(total-1)]

     session[:total]   = total
     session[:current] = 0
     session[:correct] = 0

     redirect_to :action => "test_question"
  end

  def test_question
     @current = session[:current]
     @total   = session[:total]

     if @current >= @total
        redirect_to :action => "end"
        return
     end

     @test_question = TestQuestion.find(session[:test_questions][@current])
     @choices = @test_question.choices.sort_by{rand}

     session[:test_question] = @test_question
     session[:choices] = @choices
  end

  def answer
    @current = session[:current]
    @total   = session[:total]

    @test_question = TestQuestion.find(session[:test_questions][@current])
    @choices = @test_question.choices.sort_by{rand}

    session[:test_question] = @test_question
    session[:choices] = @choices

    choiceid = params[:choice]

    # @test_question = test_question.find_by(id: params[:id])
    # @choices = @test_question.choice


     @choice = choiceid ? Choice.find(choiceid) : nil
     if @choice && @choice.correct
        @correct = true
        session[:correct] += 1
     else
        @correct = false
     end

     session[:current] += 1
  end

  def end
     @correct = session[:correct]
     @total   = session[:total]

     @score = @correct * 100 / @total
  end

end
