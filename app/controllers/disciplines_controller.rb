class DisciplinesController < ApplicationController
   def index
   end

   def new
      @discipline = Discipline.new
   end

   def create
      @discipline = Discipline.new params[:discipline]

      if @discipline.save
         flash[:notice] = "A disciplina foi criada com sucesso!"
         redirect_to disciplines_path
      else
         render :new
      end
   end
end