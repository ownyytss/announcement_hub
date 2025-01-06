# config/initializers/will_paginate.rb
require 'will_paginate'
require 'active_support/core_ext/module/aliasing'

module WillPaginate
  module ActiveRecord
    module RelationMethods
      def per(value = nil)
        per_page(value)
      end

      def total_count
        count
      end
    end
  end
end
