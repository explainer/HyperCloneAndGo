class SprinkleScheduler < Hyperloop::ServerOp
# Mitch VanDuyn @catmando 09:54
class UpdateSystemState < Hyperloop::ServerOp
  param :new_state
  dispatch_to { Hyperloop::Application }
end
# and on the client you can say for example:
#  class DisplaySomeStateHere < Hyperloop::Component
#   UpdateStateEverywhere.on_dispatch { |params| mutate.my_copy_of_some_state(params.new_state) }
#   render(DIV) do
#     "state is currently = #{state.my_copy_of_some_state}"
#   end
class DisplaySystemState < Hyperloop::Component
  UpdateSystemState.on_dispatch { |params| mutate.my_copy_of_some_state(params.new_state) }
  render(DIV) do
    "state is currently = #{state.my_copy_of_some_state}"
  end
end

# That is pretty low level and not the way i would like to see it.
# In reality you would do a little more work and create a Store like this:
class SystemStateStore <  Hyperloop::Store
  state :system_state, scope: :class, reader: true
  receives UpdateSystemState { | params | system_state.mutate params.current_state }
end
# Ken Burgett @explainer 10:00
# A Store than spanned between client and server, with the ability to write on one and read on the other would be an elegant solution, with dispatch and on_dispatch...

# Mitch VanDuyn @catmando 10:02
# class SprinklerStore <  Hyperloop::Store
#   state :system_state, scope: :class, reader: true
#   receives UpdateSprinklerSystemState { | params | system_state.mutate params.current_state }
# end
# yes you are right, that is what HyperModel does, but it is a project for down the road to make db free version of HyperModel
# But consider this: if your sprinkler system has to reboot, what happens? Someplace there must be the overall state and settings of the system persisted someplace. Right now I am hearing its scattered between cron-tabs, the wall clock, and perhaps some data files.

# Mitch VanDuyn @catmando 10:07
# Anyway that is the answer to your question I hope...

# Ken Burgett @explainer 10:08
# So, the SprinklerStore is on the client, while UpdateSystemState is on the server, since it is a ServerOP. 
# So, I can have SprinklerStore.state variables that I can attach .on_dispatch to?

# Mitch VanDuyn @catmando 10:08
# ServerOps can actually span client to server.
# the can be invoked (if you set up authorization from client) - but you don't need that in this case,
# and when they dispatch all clients authorized by dispatch_to will be notified, via on_dispatch hooks. 
# Store just implements a slightly higher mechanism on top of on_dispatch called receives.
# in your case I am guessing you will have an operation that updates the state of the system that is called by the crontab

# Ken Burgett @explainer 10:10
# The crontab file gets built/rebuilt on Active/Standby state changes, everything important is persisted in the db. 
# But, when crontab invokes a shell script, that script requests and update to a valve object. 
# That update needs to be reflected to the client.

# Mitch VanDuyn @catmando 10:11
# sure
# but why not just toss the current state of the valve object into the db, and that way everything just works?

# Ken Burgett @explainer 10:13
# This is great. The update of the valve cmd field from 0 (off) to 1 (on) will be noticed on the client when it is updated on the server?

# Mitch VanDuyn @catmando 10:13
# of course you know what you are trying to achieve... just remember hyper-model is implemented on top of operations, 
# so anything you can do in hyper-model, you can do at a lower level with hyper-operations.

# that is a field in the db?
# _
 

# I will give this a try.  
# end