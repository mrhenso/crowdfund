require_relative 'project'
require_relative 'fundrequest'



project1 = Project.new("alpha", 5000, 200)
project2 = Project.new("beta", 5000, 100)
project3 = Project.new("zeta", 5000)

projectgiver = FundRequest.new("Project Giver")
puts projectgiver.name
projectgiver.add_startups(project1)
projectgiver.add_startups(project2)
projectgiver.add_startups(project3)
projectgiver.request_funding

# puts project3.earn(250)
# puts project3.give(50)
# puts project3
# puts project1.earn(100)
# puts project1.earn(200)
# puts project1.earn(1500)
# puts project1.give(250)

# puts ""
# projects = [project1, project2, project3]


# projects.pop
# project4 = Project.new("delta",5000,450)
# projects.push(project4)
# puts "***#{project3.name} has conceded earned funds to new entrant #{project4.name}.***"
# puts ""
# puts projects