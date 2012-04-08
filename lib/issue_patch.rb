require 'issue'

module IssuePatch
  def self.included(base) # :nodoc:
    base.extend(ClassMethods)

    base.send(:include, InstanceMethods)

    base.class_eval do
      unloadable # Send unloadable so it will not be unloaded in development
	  has_many :schedules 
    end
  end

  module ClassMethods
  end

  module InstanceMethods
  end
end

Issue.send(:include, IssuePatch)