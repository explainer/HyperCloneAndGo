class UpdateSystemState < Hyperloop::ServerOp
  param :new_state
  dispatch_to { Hyperloop::Application }
end