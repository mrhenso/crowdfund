require_relative 'project'

class FundRequest
    attr_reader :name
    def initialize(name)
        @name = name
        @projects = []
    end
    
    def add_startups(a_project)
        @projects.push(a_project)
    end
    
    def request_funding
        puts "There are #{@projects.size} on-going funding projects:"
        @projects.each do |project|
        puts project
        end
        
        puts""

        @projects.each do |project|
        project.earn(500)
        puts project
        end

        puts ""

        @projects.each do |project|
            project.give(250)
            puts project
        end
     end   
end