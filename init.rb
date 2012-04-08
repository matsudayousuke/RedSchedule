require 'redmine'

Redmine::Plugin.register :redmine_red_schedule do
  name 'Redmine RedSchedule plugin'
  author 'Matsuda Yousuke'
  description 'This is a scheduling plugin for Redmine'
  version '0.0.1'
  url 'http://github.com/matsudayousuke/RedSchedule'
  author_url 'http://example.com/about'

  permission :schedule, {:schedule => [:index]}, :public => true
  menu :project_menu, :schedule, { :controller => 'schedule', :action => 'index' },
     :caption => :label_schedule, :after => :activity, :param => :project_id
end



