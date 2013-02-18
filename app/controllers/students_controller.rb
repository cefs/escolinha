class StudentsController < ApplicationController
   def index
   end   

   def new
      @student = Student.new
   end

   def create
      @student = Student.new params[:student]

      if @student.save
         flash[:notice] = "O aluno foi cadastrado com successo!"
         redirect_to students_path
      else
         render :new
      end
   end
end