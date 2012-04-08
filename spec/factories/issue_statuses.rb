Factory.sequence(:issue_status_name) do |n|
  "Status#{n}"
end

Factory.sequence(:issue_status_position) do |n|
  n
end

Factory.define :issue_status do |f| 
  f.name {Factory.next(:issue_status_name)}
  f.is_default true
  f.is_closed false
  f.position {Factory.next(:issue_status_position)}
end
# Factory.define :issue_statuses_001, :class => IssueStatus do |i|
#   i.id 1
#   i.name "New"
#   i.is_default true
#   i.is_closed false
#   i.position 1
# end
# Factory.define :issue_statuses_002, :class => IssueStatus do |i|
#   i.id 2
#   i.name "Assigned"
#   i.is_default false
#   i.is_closed false
#   i.position 2
# end
# Factory.define :issue_statuses_003, :class => IssueStatus do |i|
#   i.id 3
#   i.name "Resolved"
#   i.is_default false
#   i.is_closed false
#   i.position 3
# end
# Factory.define :issue_statuses_004, :class => IssueStatus do |i|
#   i.name "Feedback"
#   i.id 4
#   i.is_default false
#   i.is_closed false
#   i.position 4
# end
# Factory.define :issue_statuses_005, :class => IssueStatus do |i|
#   i.id 5
#   i.name "Closed"
#   i.is_default false
#   i.is_closed true
#   i.position 5
# end
# Factory.define :issue_statuses_006, :class => IssueStatus do |i|
#   i.id 6
#   i.name "Rejected"
#   i.is_default false
#   i.is_closed true
#   i.position 6
# end
