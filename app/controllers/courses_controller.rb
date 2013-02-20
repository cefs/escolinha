class CoursesController < ApplicationController
   def index
   end

   def new
      @course = Course.new
   end

   def show
      @course = Course.find params[:id]
   end

   def create
      @course = Course.new params[:course]

      if @course.save
         flash[:notice] = t("flash.courses.create.notice")
         redirect_to courses_path
      else
         render :new
      end
   end
end