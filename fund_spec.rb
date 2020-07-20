require_relative 'project'

describe 'project' do
    before do
        @fund = 1000
        @project = Project.new("alpha", 5000, @fund)
        $stdout = StringIO.new 
    end

    it "has initial target funding amount" do
        expect(@project.fund).to eq(1000)
    end

    it "computes the total funding outstanding as the target funding amount minus the funding amount" do
        expect(@project.fund_needed).to eq(5000 - 1000)
    end
    
    it "increases funds by 25 when funds are added" do
        @project.earn    
        expect(@project.fund).to eq(@fund + 25)
    end
    
    it "decreases funds by 15 when funds are removed" do
        @project.give    
        expect(@project.fund).to eq(@fund - 15)
    end

    context "created with 0 funding" do
        before do
            @project = Project.new("alpha",5000)
        end
        it "has default value of 0 for funding amount" do
            expect(@project.fund).to eq(0)
        end
    end
end