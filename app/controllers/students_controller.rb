class StudentsController < ApplicationController

   helper_method :courses

   def index
      @students = Student.paginate :page => params[:page], :size => 10
   end   

   def new
      @student = Student.new
   end

   def create
      @student = Student.new params[:student]

      if @student.save
         flash[:notice] = t("flash.students.create.notice")

         MatriculandoMailer.email_do_matriculado(@student).deliver

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

   def courses
      Course.order(:name)
   end
end