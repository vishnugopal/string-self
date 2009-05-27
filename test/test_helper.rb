require 'test/unit'
require 'string_self'


module StringSelfHelpers
  module TLD
    def self.included(base)
      Kernel.module_eval do
        [:com, :net, :org].each do |meth|
          define_method meth do
            StringSelf.new meth.to_s
          end
        end
      end
    end
  end  
end

include StringSelfHelpers::TLD

