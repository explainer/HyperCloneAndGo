require 'models/sprinkle'
require 'models/valve'

class SprinkleList < Hyperloop::Component
  render(DIV) do
    H4 { "Sprinkles" }
    TABLE(class: 'table-bordered') do
      THEAD do
        TR do
          TH do
            "Time input"
          end
          TH do
            "Duration"
          end
          TH do
            "Valve ID"
          end
        end
      end
      TBODY do
        Sprinkle.all.each do |sprinkle| 
          TR do
            TD do
              sprinkle.time_input
            end
            TD do
              sprinkle.duration.to_s
            end
            TD do
              sprinkle.valve_id.to_s
              # Valve.find(sprinkle.valve_id).name
            end
          end
        end
      end
    end  
  end
end