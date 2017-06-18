class SprinkleEvent < ApplicationRecord
  def manipulate_and_update(params)
    # logger.info "Valve #{self.name}, cmd: #{self.cmd}"
    # # logger.info "Valve #{self}"
    # result = ''
    # params.each do |key,value|
    #   result += "#{key}: #{value}\n"
    # end
    # logger.info "params: #{result}"
    # token = "#{params['cmd']}"
    # logger.info "manipulate_and_update: token --> #{token}"
    # case params['cmd']
    # when '1' # start valve sequence
    #   logger.info "cmd --> #{params['cmd']}, start a valve sequence"
    #   start
      
    # when '0' # stop valve sequence
    #   logger.info "cmd --> #{params['cmd']}, stop valve sequence"
    #   stop
    # end
  end

end
