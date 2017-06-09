# app/hyperloop/components/app.rb
class App < Hyperloop::Component
  render(UL) do

    H4 { "Aquarius Models" }
    SystemState {}
    ValveList {}
    HistoryList {}
    SprinkleList {}
  end
end
