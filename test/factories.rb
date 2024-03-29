FactoryGirl.define do
  factory :issue do
  	created_on { 3.days.ago.to_date.to_s(:db) }
  	project_id 1
  	updated_on { 1.day.ago.to_date.to_s(:db) }
  	priority_id 4
  	subject "Can't print recipes"
  	id 1
  	fixed_version_id 
  	category_id 1
  	description "Unable to print recipes"
  	tracker_id 1
  	assigned_to_id 
  	author_id 2
  	status_id 1
  	start_date { 1.day.ago.to_date.to_s(:db) }
  	due_date { 10.day.from_now.to_date.to_s(:db) }
  	root_id 1
  	lft 1
  	rgt 2
  end
end