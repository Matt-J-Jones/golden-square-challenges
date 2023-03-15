# File: lib/ex1_reading_speed

def reading_speed(wordcount)
  if wordcount == 0
    return "0 minute"
  else
    return calc_time(wordcount)
  end
end

def calc_time(words_count)
  if words_count % 200 == 0
    if words_count / 200 == 1
      return "#{words_count / 200} minute"
    else 
      return "#{words_count / 200} minutes"
    end
  else
    remainder = (((words_count%200)/200.00)*60).to_i
    if words_count / 200 == 1
      return "#{words_count / 200} minute and #{remainder} seconds"
    else
      return "#{words_count / 200} minutes and #{remainder} seconds"
    end
  end
end

