require 'active_support/core_ext/array'
require "my_soft_delete/version"
require "my_soft_delete/deleteable"
module MySoftDelete
end
ActiveRecord::Base.send :include, MySoftDelete::Deleteable
