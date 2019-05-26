class ChoicesController < ApplicationController

    def create
        @test_question = TestQuestion.find(params[:test_question])
        text = params[:text]
        correct = params[:correct] == "1"
        new = Choice.create(:text => text, :correct => correct, :test_question_id => @test_question.id)

        if new.correct
        @test_question.answer = new
        end

        redirect_to test_question_path(@test_question)
    end

    def destroy
        @test_question = TestQuestion.find(params[:test_question])
        @choice = Choice.find(params[:choice])
        @choice.destroy
        redirect_to test_question_path(@test_question)
    end
end
