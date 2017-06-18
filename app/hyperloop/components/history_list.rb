require 'models/history'
require 'models/valve'

class HistoryList < Hyperloop::Component
  
  render(DIV) do
    H4 { "Histories"}
    TABLE(class: 'table-bordered') do
      THEAD do
        TR do
          TH { "Start time" }
          TH { "Stop time" }
          TH { "Valve ID" }
        end
      end
      TBODY do
        History.all.each do |history| 
          TR do
            TD do
              history.start_time.strftime("%a %d %b %l:%M %P")
            end
            TD do
              history.stop_time.strftime("%a %d %b %l:%M %P")
            end
            TD do
              history.valve_id.to_s
              # Valve.find(history.valve_id).name
            end
          end
        end
      end
    end
  end
end

