require 'models/history'
require 'models/valve'

class HistoryList < Hyperloop::Component
  
  render(DIV) do
    H4 { "Histories"}
    UL do
      History.each { |history| LI { "#{history.start_time.strftime("%a %d %b %l:%M %P")} to #{history.stop_time.strftime("%a %d %b %l:%M %P")} #{Valve.find(history.valve_id).name }" } }
    end
  end
end