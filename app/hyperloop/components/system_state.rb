# app/hyperloop/components/system_state.rb

require 'models/water_manager'

class SystemState < Hyperloop::Component
  render(DIV) do
    BUTTON { "localhost:3000" }
    BUTTON { "#{WaterManager.first.state}" }
  end
end
