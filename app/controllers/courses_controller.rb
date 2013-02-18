class CoursesController < ApplicationController
   def index
   end

   def new
      @course = Course.new
   end

   def create
      @course = Course.new params[:course]

      if @course.save
         flash[:notice] = "O turma foi cadastrada com sucesso!"
         redirect_to courses_path
      else
         render :new
      end
   end
end