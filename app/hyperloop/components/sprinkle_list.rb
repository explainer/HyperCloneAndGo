require 'models/sprinkle'
require 'models/valve'

class SprinkleList < Hyperloop::Component
  render(DIV) do
    H4 { "Sprinkles" }
    UL do
      Sprinkle.each { |sprinkle| LI { "#{Valve.find(sprinkle.valve_id).name }, #{sprinkle.time_input} for #{sprinkle.duration} minutes" } }
    end
  end
end