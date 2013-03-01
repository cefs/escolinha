class CoursesController < ApplicationController
   def index
      @courses = Course.paginate :page => params[:page], :size => 10
   end

   def new
      @course = Course.new
   end

   def show
      @course = Course.find params[:id]      

      @disciplines_teachers  = Room.where("course_id = ?", @course.id)
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

   def edit
      @course = Course.find params[:id]      
   end

   def update
      @course = Course.find params[:id]
      if @course.update_attributes params[:course]
         flash[:notice] = t("flash.courses.update.notice")
         redirect_to courses_path
      else
         render :edit
      end
   end
end