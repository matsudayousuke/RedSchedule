Factory.sequence(:document_category_name) do |n|
  "DocumentCategory#{n}"
end
Factory.define :document_category do |f| 
  f.name {Factory.next(:document_category_name)}
  f.type "DocumentCategory"
  f.active true
end

Factory.sequence(:issue_priority_name) do |n|
  "IssuePriority#{n}"
end
Factory.define :issue_priority do |f| 
  f.name {Factory.next(:document_category_name)}
  f.type "IssuePriority"
  f.active true
end

Factory.sequence(:time_entry_activity_name) do |n|
  "TimeEntryActivity#{n}"
end
Factory.define :time_entry_activity do |f| 
  f.name {Factory.next(:time_entry_activity_name)}
  f.type "TimeEntryActivity"
  f.active true
end

Factory.sequence(:enumeration_name) do |n|
  "Enumeration#{n}"
end
Factory.define :enumeration do |f| 
  f.name {Factory.next(:enumeration_name)}
  f.type "Enumeration"
  f.active true
end
# Factory.define :enumerations_001, :class => IssuePriority do |f| 
#   f.name "Uncategorized"
#   f.id 1
#   f.type "DocumentCategory"
#   f.active true
# end
# Factory.define :enumerations_002, :class => IssuePriority do |f| 
#   f.name "User documentation"
#   f.id 2
#   f.type "DocumentCategory"
#   f.active true
# end
# Factory.define :enumerations_003, :class => IssuePriority do |f| 
#   f.name "Technical documentation"
#   f.id 3
#   f.type "DocumentCategory"
#   f.active true
# end

# Factory.define :enumerations_004, :class => IssuePriority do |f| 
#   f.name "Low"
#   f.id 4
#   f.type "IssuePriority"
#   f.active true
#   f.position 1
# end
# Factory.define :enumerations_005, :class => IssuePriority do |f| 
#   f.name "Normal"
#   f.id 5
#   f.type "IssuePriority"
#   f.is_default true
#   f.active true
#   f.position 2
# end
# Factory.define :enumerations_006, :class => IssuePriority do |f| 
#   f.name "High"
#   f.id 6
#   f.type "IssuePriority"
#   f.active true
#   f.position 3
# end
# Factory.define :enumerations_007, :class => IssuePriority do |f| 
#   f.name "Urgent"
#   f.id 7
#   f.type "IssuePriority"
#   f.active true
#   f.position 4
# end
# Factory.define :enumerations_008, :class => IssuePriority do |f| 
#   f.name "Immediate"
#   f.id 8
#   f.type "IssuePriority"
#   f.active true
#   f.position 5
# end
# Factory.define :enumerations_009, :class => IssuePriority do |f| 
#   f.name "Design"
#   f.id 9
#   f.type "TimeEntryActivity"
#   f.position 1
#   f.active true
# end
# Factory.define :enumerations_010, :class => IssuePriority do |f| 
#   f.name "Development"
#   f.id 10
#   f.type "TimeEntryActivity"
#   f.position 2
#   f.is_default true
#   f.active true
# end
# Factory.define :enumerations_011, :class => IssuePriority do |f| 
#   f.name "QA"
#   f.id 11
#   f.type "TimeEntryActivity"
#   f.position 3
#   f.active true
# end
# Factory.define :enumerations_012, :class => IssuePriority do |f| 
#   f.name "Default Enumeration"
#   f.id 12
#   f.type "Enumeration"
#   f.is_default true
#   f.active true
# end
# Factory.define :enumerations_013, :class => IssuePriority do |f| 
#   f.name "Another Enumeration"
#   f.id 13
#   f.type "Enumeration"
#   f.active true
# end
# Factory.define :enumerations_014, :class => IssuePriority do |f| 
#   f.name "Inactive Activity"
#   f.id 14
#   f.type "TimeEntryActivity"
#   f.position 4
#   f.active false
# end
# Factory.define :enumerations_015, :class => IssuePriority do |f| 
#   f.name "Inactive Priority"
#   f.id 15
#   f.type "IssuePriority"
#   f.position 6
#   f.active false
# end
# Factory.define :enumerations_016, :class => IssuePriority do |f| 
#   f.name "Inactive Document Category"
#   f.id 16
#   f.type "DocumentCategory"
#   f.active false
# end