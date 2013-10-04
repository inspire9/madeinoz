preload_app true
# worker_processes 2 # amount of unicorn workers to spin up
timeout 30         # restarts workers that hang for 30 seconds
after_fork do |server, worker|
  defined?(ActiveRecord::Base) and ActiveRecord::Base.establish_connection
end
