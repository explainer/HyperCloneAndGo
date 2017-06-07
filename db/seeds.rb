
#
# rails g scaffold Valve name:string pin:integer --force
atrium = Valve.create(name: 'Atrium', gpio_pin: 7, bb_pin: 27, cpu2bb_color: 'red',         relay_module: 2, relay_index: 1, cmd: 0, base_time: Time.now)
back   = Valve.create(name: 'Back',   gpio_pin:22, bb_pin: 22, cpu2bb_color: 'cream',       relay_module: 1, relay_index: 4, cmd: 0, base_time: Time.now)
deck   = Valve.create(name: 'Deck',   gpio_pin:12, bb_pin: 12, cpu2bb_color: 'brown',       relay_module: 1, relay_index: 1, cmd: 0, base_time: Time.now)
front  = Valve.create(name: 'Front',  gpio_pin:16, bb_pin: 18, cpu2bb_color: 'white-brown', relay_module: 1, relay_index: 3, cmd: 0, base_time: Time.now)
tomato = Valve.create(name: 'Tomato', gpio_pin:18, bb_pin: 16, cpu2bb_color: 'orange',      relay_module: 1, relay_index: 2, cmd: 0, base_time: Time.now)

