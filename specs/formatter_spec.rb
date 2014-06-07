require_relative "../src/formatter"

describe Formatter do
    before :each do
        @formatter = Formatter.new
    end
    describe "#new" do
        it "is instantiable" do
            @formatter.should be_an_instance_of Formatter
        end
    end
end
