require 'models/history'
require 'models/valve'

class HistoryList < Hyperloop::Component
  
  render(DIV) do
    H4 { "Histories"}
    # UL do
    #   History.each { |history| LI { "#{history.start_time.strftime("%a %d %b %l:%M %P")} to #{history.stop_time.strftime("%a %d %b %l:%M %P")} #{Valve.find(history.valve_id).name }" } }
    # end
    TABLE(class: 'table-bordered') do
      THEAD do
        TR do
          TH do
            "Start time"
          end
          TH do
            "Stop time"
          end
          TH do
            "Valve ID"
          end
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

# <h2>Basic Table</h2>
#   <p>The .table class adds basic styling (light padding and only horizontal dividers) to a table:</p>            
#   <table class="table">
#     <thead>
#       <tr>
#         <th>Firstname</th>
#         <th>Lastname</th>
#         <th>Email</th>
#       </tr>
#     </thead>
#     <tbody>
#       <tr>
#         <td>John</td>
#         <td>Doe</td>
#         <td>john@example.com</td>
#       </tr>
#       <tr>
#         <td>Mary</td>
#         <td>Moe</td>
#         <td>mary@example.com</td>
#       </tr>
#       <tr>
#         <td>July</td>
#         <td>Dooley</td>
#         <td>july@example.com</td>
#       </tr>
#     </tbody>
#   </table>