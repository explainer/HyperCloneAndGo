# app/hyperloop/components/app.rb
class App < Hyperloop::Component
  render(UL) do
    Navbar {}
    Layout {}
  end
end
