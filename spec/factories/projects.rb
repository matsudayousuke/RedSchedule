Factory.sequence(:project_name) do |n|
  "Project#{n}"
end
Factory.define :project, :class => Project do |p| 
  p.created_on "2006-07-19 19:13:59 +02:00"
  p.updated_on "2006-07-19 22:53:01 +02:00"
  p.name {Factory.next(:project_name)}
  p.description "Recipes management application"
  p.homepage "http://ecookbook.somenet.foo/"
  p.is_public true
  p.identifier {Factory.next(:project_name)}
end

# Factory.define :projects_001, :class => Project do |p| 
#   p.created_on "2006-07-19 19:13:59 +02:00"
#   p.updated_on "2006-07-19 22:53:01 +02:00"
#   p.name "eCookbook"
#   p.id 1
#   p.description "Recipes management application"
#   p.homepage "http://ecookbook.somenet.foo/"
#   p.is_public true
#   p.identifier "ecookbook"
# end
# 
# Factory.define :projects_002, :class => Project do |p| 
#   p.created_on "2006-07-19 19:14:59 +02:00"
#   p.updated_on "2006-07-19 22:14:19 +02:00"
#   p.name "OnlineStore"
#   p.id 2
#   p.description "E-commerce web site"
#   p.homepage ""
#   p.is_public false
#   p.identifier "onlinestore"
# end
# 
