class DisciplinesController < ApplicationController
   def index
   end

   def new
      @discipline = Discipline.new
   end

   def create
      @discipline = Discipline.new params[:discipline]

      if @discipline.save
         flash[:notice] = t("flash.disciplines.create.notice")
         redirect_to disciplines_path
      else
         render :new
      end
   end
end