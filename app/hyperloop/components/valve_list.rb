require 'models/valve'

class ValveList < Hyperloop::Component

  render(DIV) do
    H4 { "Valves" }
    Valve.each do |valve| 
      BUTTON { "#{valve.name}" }
    end
  end
end