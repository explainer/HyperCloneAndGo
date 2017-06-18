#bundle install
#rails g controller main index --force
rails g scaffold History start_time:datetime stop_time:datetime valve_id:integer --force
rails g scaffold Sprinkle next_start_time:datetime base_start_time:datetime time_input:string duration:integer valve_id:integer --force
# rails g scaffold Valve name:string gpio_pin:integer cpu2bb_color:string bb_pin:integer bb2relay_color:string relay_module:integer \
#   relay_index:integer relay2valve_color:string cmd:integer base_time:datetime --force
rails g scaffold WaterManager state:string http_host:string --force s

rails g scaffold SprinkleEvent valve_id:integer history_id:integer valve_cmd:integer 
# rails g app_constants
# sh development-bounce-db.sh
#
# commands used for foundation
#
# rails g foundation:install --haml --force
#
# commands user for backbone
#
# rails g backbone:install
# rails g backbone:scaffold History
# rails g backbone:scaffold WaterManager
# rails g backbone:scaffold Sprinkle
# rails g backbone:scaffold Valve

# ch3n0nc389