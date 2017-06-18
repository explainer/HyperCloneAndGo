# HyperAQ
Hyperloop version of Aquarius, a lawn sprinkler rails app hosted on a RaspberryPI 3

This is a further development of an earlier version that employed a traditional UI, based on Rails .erb technology.  Workman-like, but boring.  

I looked around for other options, and decided to deploy a backbone javascript solution, written in CoffeeScript.  The app worked, but I found the combination of js, html, and css all mixed up in backbone framework code kind of off-putting.  So, I did some more research.

I found ruby-hyperloop kind of by accident.  I had considered using the Opal compiler in the past, but building out all the necessary asset pipeline stuff put me off.  Hyperloop seemed to be a more complete solution, well thought out.  The idea of writing ALL of my application code in Ruby and then letting Hyperloop compile client UI parts into Javascript, while compiling the rest of the app into native Ruby is a genius idea.

I learned a bit how to construct a rails-hyperloop app and decided to build a new version of Aquarius.

Changes
Side-effect programming, or Fat Rails Models.
External and Hardware dependencies
Operations and ServerOps
  SprinkleEventHandler {id, valve_id, sprinkle_id, history_id }
    receives SprinkleEvent instance based on crontab callback.
      If cmd is 1, 
        turn on the valve identified by valve_id, 
        create a history record, identifying the valve used, and the current time as start_time.
        update the SprinkleEvent identified by id, set the history_id, and save.
        dispatch a SprinkleStateChange, to be received in client code
          valve_button should be turned on.
          re-sort history table.
      if cmd is 0
        turn off the valve of valve_id, 
        fetch the History by history_id,
        update the history record by setting the current time as stop_time, and save
        update the SprinkleEvent identified by id, set the history_id, and save.
        dispatch a SprinkleStateChange, to be received in client code.
          changes would be made to sprinkle order, highlight (idle, ondeck, active)
          history changes due to addition of stop_time
          update sprinkle reference by sprinkle_id to update its next_start_time, 
          and request a re-sort of table.
          valve_button should be turned off.

  ManualValveHandler
    When a valve button is depressed on the browser display, the associated valve changes state.
    
Dispatch and Receive.


