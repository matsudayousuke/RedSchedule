ActionController::Routing::Routes.draw do |map|
  map.with_options :controller => 'schedule' do |schedule|
    schedule.connect 'projects/:project_id/schedule', :action => 'index'
  end
end