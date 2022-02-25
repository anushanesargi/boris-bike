class Bike

  attr_reader :condition

    def initialize(condition)
        fail 'incorrect condition' if (condition != "good" && condition != "broken")
        @condition = condition
    end

    def working?
        return @condition == "good"
    end

end
