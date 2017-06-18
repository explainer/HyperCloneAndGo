require 'models/sprinkle'
require 'models/valve'

class SprinkleList < Hyperloop::Component
  render(DIV) do
    H4 { "Sprinkles" }
    TABLE(class: 'table-bordered') do
      THEAD do
        TR do
          TH { "Next Start Time" }          
          TH { "Time input" }
          TH { "Duration" }
          TH { "Valve ID" }
        end
      end
      TBODY do
        Sprinkle.all.each do |sprinkle| 
          TR do
            TD { sprinkle.next_start_time.strftime("%a %d %b %l:%M %P")}
            TD { sprinkle.time_input }            
            TD { sprinkle.duration.to_s }
            TD { sprinkle.valve_id.to_s }
          end
        end
      end
    end  
  end
end