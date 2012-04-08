require File.dirname(__FILE__) + '/../spec_helper'

Factory.sequence(:user_lastname) do |n|
  "lastName#{n}"
end
Factory.sequence(:user_firstname) do |n|
  "FirstName#{n}"
end
Factory.sequence(:user_login) do |n|
  "login#{n}"
end
Factory.define :user, :class => User do |u| 
  u.created_on "2006-07-19 19:32:09 +02:00"
  u.status
#  u.status {IssueStatus.find_by_id(1) || Factory(:issue_statuses_001)}
  u.last_login_on "2006-07-19 22:42:15 +02:00"
  u.language "en"
  # u.password "admin"
  u.salt "82090c953c4a0000a7db253b0691a6b4"
  u.hashed_password "b5b6ff9543bf1387374cdfa27a54c96d236a7150"
  u.updated_on "2006-07-19 22:42:15 +02:00"
  u.admin false
  u.mail "admin@somenet.foo"
  u.lastname {Factory.next(:user_lastname)}
  u.firstname {Factory.next(:user_firstname)}
  u.mail_notification "all"
  u.login {Factory.next(:user_login)}
  u.type "User"
end
# Factory.define :users_002, :class => User do |u| 
#   u.created_on "2006-07-19 19:32:09 +02:00"
#  u.status {IssueStatus.find_by_id(1) || Factory(:issue_statuses_001)}
#   u.association :status, :factory => :issue_statuses_001
#   u.last_login_on "2006-07-19 22:42:15 +02:00"
#   u.language "en"
#   # u.password "jsmith"
#   u.salt "67eb4732624d5a7753dcea7ce0bb7d7d"
#   u.hashed_password "bfbe06043353a677d0215b26a5800d128d5413bc"
#   u.updated_on "2006-07-19 22:42:15 +02:00"
#   u.admin false
#   u.mail "jsmith@somenet.foo"
#   u.lastname "Smith"
#   u.firstname "John"
#   u.id 2
#   u.mail_notification "all"
#   u.login "jsmith"
#   u.type "User"
# end
