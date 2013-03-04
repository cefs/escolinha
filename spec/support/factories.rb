# encoding: UTF-8

FactoryGirl.define do
   factory :teacher do
      sequence(:name) {|n| "Áthila Soáres #{n}" }
   end

   factory :student do
      sequence(:name) {|n| "Carlos Eduardo #{n}" }
      sequence(:email) {|n| "cefs198#{n}@gmail.com" }
   end

   factory :course do
      sequence(:name) {|n| "Turma 1 #{n}" }
   end

   factory :discipline do
      sequence(:name) {|n| "Banco de Dados #{n}" }
   end

   factory :room do
      association :course
      association :teacher
      association :discipline
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