Factory.sequence(:tracker_name) do |n|
  "TrackerName#{n}"
end
Factory.define :tracker, :class => Tracker do |t| 
  t.name {Factory.next(:tracker_name)}
  t.is_in_chlog true
  t.position 1
end
# Factory.define :trackers_001, :class => Tracker do |t| 
#   t.name "Bug"
#   t.id 1
#   t.is_in_chlog true
#   t.position 1
# end
# Factory.define :trackers_002, :class => Tracker do |t| 
#   t.name "Feature request"
#   t.id 2
#   t.is_in_chlog true
#   t.position 2
# end
# Factory.define :trackers_003, :class => Tracker do |t| 
#   t.name "Support request"
#   t.id 3
#   t.is_in_chlog false
#   t.position 3
# end