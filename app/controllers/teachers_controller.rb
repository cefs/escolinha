class TeachersController < ApplicationController
   def index

   end

   def new
      @teacher = Teacher.new
   end

   def create
      @teacher = Teacher.new params[:teacher]      

      if @teacher.save
         flash[:notice] = t("flash.teachers.create.notice")
         redirect_to teachers_path
      else
         render :new
      end
   end
end