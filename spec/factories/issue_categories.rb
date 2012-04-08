require File.dirname(__FILE__) + '/../spec_helper'

Factory.sequence(:issue_category_name) do |n|
  "IssueCategory#{n}"
end
Factory.define :issue_category do |f| 
  f.name {Factory.next(:issue_category_name)}
  f.project 
  f.assigned_to 
end

# Factory.define :issue_categories_001, :class => IssueCategory do |i|
#   i.name "Printing"
#   i.project {Project.find_by_id(1) || Factory(:projects_001)}
#   i.assigned_to {User.find_by_id(2) || Factory(:users_002)}
#   i.id 1
# end
# Factory.define :issue_categories_002, :class => IssueCategory do |i|
#   i.name "Recipes"
#   i.project {Project.find_by_id(1) || Factory(:projects_001)}
#   i.assigned_to 
#   i.id 2
# end
# Factory.define :issue_categories_003, :class => IssueCategory do |i|
#   i.name "Stock management"
#   i.project {Project.find_by_id(2) || Factory(:projects_002)}
#   i.assigned_to 
#   i.id 3
# end
# Factory.define :issue_categories_004, :class => IssueCategory do |i|
#   i.name "Printing"
#   i.project {Project.find_by_id(2) || Factory(:projects_002)}
#   i.assigned_to 
#   i.id 4
# end
#   