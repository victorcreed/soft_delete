module SoftDelete
  module Deleteable
    def self.included base
      base.send :include, InstanceMethods
      base.extend ClassMethods
    end
    module ClassMethods

      def acts_as_soft_delete(default_column_name=:deleted_at)
        cattr_accessor :default_column_name
        default_column_name =default_column_name
        default_scope  { where(default_column_name => nil) }
        define_method "destroy" do |opts={}|
          opts[:force] && super() || mark_soft_delete(Time.now)
        end
        define_method "mark_soft_delete" do |v|
          (_ = self).send("#{default_column_name}=", v); _.save(validate: false) 
        end
        class_eval do 
          define_method "self.reviev_by_id" do |id|
            self.class.unscoped.find(id).mark_soft_delete(nil)
          end
        end

      end
    end
    module InstanceMethods
    end
  end
end
