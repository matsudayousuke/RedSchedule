require File.dirname(__FILE__) + '/../spec_helper'
Factory.define :schedule do |s|
  s.issue
#  s.issue {Issue.find_by_id(1) || Factory(:issues_001)}
  s.scheduled_date {Date.today} 
  s.hours 3
  s.created_at { 3.days.ago.to_date.to_s(:db) }
  s.updated_at { 3.days.ago.to_date.to_s(:db) }
end