require File.dirname(__FILE__) + '/../spec_helper'

Factory.sequence(:issue_subject) do |n|
  "Issue#{n}"
end
Factory.define :issue do |f| 
  f.created_on { 3.days.ago.to_date.to_s(:db) }
  f.updated_on { 3.days.ago.to_date.to_s(:db) }
  f.project 
  f.priority 
  f.subject "Can't print recipes"
  f.category 
  f.description "Unable to print recipes"
  f.tracker 
  f.author 
  f.status 
  f.start_date { 1.day.ago.to_date.to_s(:db) }
  f.due_date { 10.day.from_now.to_date.to_s(:db) }
end
# 
# Factory.define :issue do |f|
#   f.created_on { 3.days.ago.to_date.to_s(:db) }
#   f.updated_on { 3.days.ago.to_date.to_s(:db) }
#   f.project {Project.find_by_id(1) || Factory(:projects_001)}
#   f.priority {Enumeration.find_by_id(1) || Factory(:enumerations_001)}
#   f.subject "Can't print recipes"
#   f.id 1 
#   f.category {IssueCategory.find_by_id(1) || Factory(:issue_categories_001)}
#   f.description "Unable to print recipes"
#   f.tracker {Tracker.find_by_id(1) || Factory(:trackers_001)}
#   f.author {User.find_by_id(1) || Factory(:users_001)}
#   f.status {IssueStatus.find_by_id(1) || Factory(:issue_statuses_001)}
#   f.start_date { 1.day.ago.to_date.to_s(:db) }
#   f.due_date { 10.day.from_now.to_date.to_s(:db) }
# end
# 
