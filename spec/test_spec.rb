describe "Equality Matchers" do

    it "should show how the equality matchers work" do
        a = "test"
        b = a

        expect(a).to eq "test"
        expect(a).to eql "test"
        expect(a).to be b
        expect(a).to equal b

    end

    it "should show how the error Matchers work" do 
      
        # The following Expectations will all pass 
        expect { 1/0 }.to raise_error(ZeroDivisionError)
        expect { 1/0 }.to raise_error("divided by 0") 
        expect { 1/0 }.to raise_error("divided by 0", ZeroDivisionError) 
     end 

end
