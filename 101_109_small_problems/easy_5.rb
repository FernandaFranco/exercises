# ascii string value

# def ascii_value(string)
#   string.chars.map(&:ord).reduce(0, :+)
# end

# p ascii_value('Four score') == 984
# p ascii_value('Launch School') == 1251
# p ascii_value('a') == 97
# p ascii_value('') == 0

# after midnight part 1

HOURS_PER_DAY = 24
MINUTES_PER_HOUR = 60
MINUTES_PER_DAY = MINUTES_PER_HOUR * HOURS_PER_DAY

def time_of_day(delta_minutes)
  delta_minutes = delta_minutes % MINUTES_PER_DAY
  hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
  # if delta_minutes < 0
  #   hours = HOURS_PER_DAY + hours
  # end
  # if hours.abs > HOURS_PER_DAY
  #   hours = hours.abs/HOURS_PER_DAY
  # end
  # hours = hours.to_s
  # minutes = minutes.to_s
  # if hours.length == 1
  #   hours = '0' + hours
  # end
  # if minutes.length == 1
  #   minutes = '0' + minutes
  # end
  # hours.to_s + ':' + minutes.to_s
  format('%02d:%02d', hours,  minutes)
end

def time_of_day(delta_minutes)
  date_and_time = Time.new(2023) # => 2023-01-01 00:00:00 -0500 (it's a Sunday)

  days, delta_minutes = delta_minutes.divmod(MINUTES_PER_DAY)
  hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)

  date_and_time += minutes*60 + hours*60*60 + days*60*60*24
  date_and_time.strftime('%A %H:%M')

end

p time_of_day(0) # => "Sunday 00:00"
p time_of_day(-3) # => "Saturday 23:57"
p time_of_day(35) # => "Sunday 00:35"
p time_of_day(-1437) # => "Saturday 00:03"
p time_of_day(3000) # => "Tuesday 02:00"
p time_of_day(800) # => "Sunday 13:20"
p time_of_day(-4231) # => "Thursday 01:29"

# after midnight part 2

def after_midnight(time)
  hour = time[0..1].to_i
  minute = time[-2..-1].to_i
  delta_minutes = hour * 60 + minute
  delta_minutes % 1440
end

def before_midnight(time)
  delta_minutes = 1440 - after_midnight(time)
  delta_minutes == 1440 ? 0 : delta_minutes
end

require 'time'

def after_midnight(time)
  t = Time.parse(time)
  delta_minutes = t.hour * 60 + t.min
  delta_minutes % 1440
end

def before_midnight(time)
  delta_minutes = 1440 - after_midnight(time)
  delta_minutes == 1440 ? 0 : delta_minutes
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0

