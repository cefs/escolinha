# encoding: UTF-8

FactoryGirl.define do
   factory :teacher do
      name "Áthila Soáres"
   end

   factory :student do
      name "Carlos Eduardo"
   end

   factory :course do
      name "Turma 1"
   end

   factory :discipline do
      name "Banco de Dados"
   end

   preload do
      factory(:carlos_eduardo) do
         FactoryGirl.create(:student)
      end

      factory(:athila_soares) do
         FactoryGirl.create(:teacher)
      end

      factory(:banco_de_dados) do
         FactoryGirl.create(:discipline)
      end

      factory(:turma_1) do
         FactoryGirl.create(:course)
      end
   end
end