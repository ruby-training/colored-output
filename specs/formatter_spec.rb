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
    describe "#format" do
        it "formats a string" do
            @formatter.format("foo", nil, nil).should \
                eq "foo\033[0m"
            @formatter.format("foo", "red", nil).should \
                eq "\033[0;31mfoo\033[0m"
            @formatter.format("foo", nil, "green").should \
                eq "\033[42mfoo\033[0m"
            @formatter.format("foo", "red", "green").should \
                eq "\033[0;31m\033[42mfoo\033[0m"
        end
    end
end
