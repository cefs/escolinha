class StudentsController < ApplicationController
   def index
   end   

   def new
      @student = Student.new
   end

   def create
      @student = Student.new params[:student]

      if @student.save
         flash[:notice] = t("flash.students.create.notice")
         redirect_to students_path
      else
         render :new
      end
   end
end