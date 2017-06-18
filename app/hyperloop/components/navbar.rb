#/app/hyperloop/components/navbar.rb

class Navbar < Hyperloop::Component
  render(NAV) do
    NAV(class: 'navbar navbar-inverse') do
      DIV(class: 'container-fluid') do
        DIV(class: 'navbar-header') do
          A(class: 'navbar-brand') do
            system_host
          end
        end
        UL(class: 'nav navbar-nav') do
          system_button
        end
        UL(class: 'nav navbar-nav navbar-right') do
          Valve.all.each do |valve|
            LI do
              valve_button(valve)
            end
          end
        end
      end
    end
  end

  def system_button
    BUTTON(class: "btn #{system_button_state} navbar-btn") do #.on(:click) {state_button_toggled}
      system_state
    end
  end

  # def state_button_toggled
  #   if WaterManager.first.state == "Active"
  #     WaterManager.first.state = 'Standby'
  #   else
  #     WaterManager.first.state = "Active"
  #   end
  #   WaterManager.save
  # end

  def system_button_state
    state_class = {'Active': "btn-primary", 'Standby': 'btn-success'}
    state_class[system_state]
  end

  def system_state
    WaterManager.first.state
  end

  def system_host
    "http://#{WaterManager.first.http_host}"
  end

  def valve_button(valve)
    BUTTON(class: "btn #{valve_state(valve)} navbar-btn") do
      valve.name
    end
  end

  def valve_state(valve)
    valve_class = {'0': "btn-primary", '1': 'btn-success'}
    valve_class[valve.cmd.to_s]
  end
end
