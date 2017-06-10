# app/hyperloop/components/system_state.rb

require 'models/water_manager'

class SystemState < Hyperloop::Component
  render(DIV) do
    wm = WaterManager.first
    BUTTON { "localhost:3000" }
    BUTTON { "#{WaterManager.first.state}" }.on(:click) do
      if wm.state == 'Standby'
        wm.state = 'Active'
      else
        wm.state = 'Standby'
      end
      wm.save
    end
  end
end
