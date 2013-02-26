namespace "app:update_counter_cache" do
   desc "Update all counter caches"
   task :all => [:environment, :courses]

   desc "Update courses counter cache"
   task :courses do
      Course.find_each do |course|
         Course.reset_counters(course.id, :students)
      end
   end
end