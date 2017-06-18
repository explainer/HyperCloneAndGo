
class DisplaySystemState < Hyperloop::Component
  UpdateSystemState.on_dispatch { |params| mutate.my_copy_of_some_state(params.new_state) }
  render(DIV) do
    "state is currently = #{SystemStateStore.my_copy_of_some_state}"
  end
end

