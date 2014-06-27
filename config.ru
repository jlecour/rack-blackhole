# This file is used by Rack-based servers to start the application.

sleep_time = Integer(ENV.fetch("SLEEP") { 60 })

run lambda { |env|
  sleep(sleep_time)
  [200, {"Content-Type" => "text/plain"}, ["Hello. The time is #{Time.now}. I've slept #{sleep_time} seconds"]]
}
