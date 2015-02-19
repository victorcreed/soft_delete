require 'active_support/core_ext/array'
require "soft_delete/version"
require "soft_delete/deleteable"
module SoftDelete
end
ActiveRecord::Base.send :include, SoftDelete::Deleteable
