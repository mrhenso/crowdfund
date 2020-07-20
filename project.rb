class Project
    attr_reader :fund, :target
    attr_accessor :name
    def initialize(name, target, fund=0)
        @name = name.capitalize
        @target = target
        @fund = fund
    end
    
    def earn
         @fund += 25
       puts "#{@name} earned $25! Total is $#{@fund}."
    end
    
    def give
        @fund -= 15
        puts "#{@name} gave $15! Total is $#{@fund}."
    end
    # def earn(usd)
    #     @fund += (usd)
    #     "#{@name} earned $#{@usd}! Total is $#{@fund}."
    # end
    # def give(usd)
    #     @fund -= (usd)
    #     "#{@name} gave $#{@usd}! Total is $#{@fund}."
    # end

    def fund_needed
        @target - @fund
    end
   
    def to_s
        "#{@name}'s current fund amount is $#{@fund}. #{@name} still needs $#{fund_needed} to hit target of $#{@target}."
    end
  
end