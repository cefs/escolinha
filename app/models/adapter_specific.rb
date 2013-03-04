class AdapterSpecific
   class << self

      def like_case_insensitive
         case ActiveRecord::Base.connection.adapter_name
            when 'PostgreSQL'
               'ILIKE'
            else
               'LIKE'
            end
         end
      end
end