#
# config/initializers/scheduler.rb

require 'rufus-scheduler'


s = Rufus::Scheduler.singleton


# Stupid recurrent task...
#
s.every '1m', :first_at => Time.now + 10 do

  Rails.logger.info "hello, it's #{Time.now}"
  Rails.logger.flush



end