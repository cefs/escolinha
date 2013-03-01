class StudentsController < ApplicationController
   def index
      @students = Student.paginate :page => params[:page], :size => 4
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

   def edit
      @student = Student.find(params[:id])
   end

   def update
      @student = Student.find params[:id]

      if @student.update_attributes params[:student]
         flash[:notice] = t("flash.students.update.notice")
         redirect_to students_path
      else
         render :edit
      end
   end

   def reset
      student = Student.find params[:id]     
      id = student.course_id

      student.update_attributes :course_id => nil      

      Course.decrement_counter(:students_count, id)

      redirect_to courses_path
   end
end