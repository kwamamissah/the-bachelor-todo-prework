def get_first_name_of_season_winner(data, season)

  name = nil

  data[season].collect do |results|
    if results["status"] == "Winner"
      name = results["name"].split(" ").first
      return name
    end

  end
end

def get_contestant_name(data, occupation)

  name = nil

  data.collect do |season, results|
    results.collect do |contestant|
      if contestant["occupation"] == occupation
      name = contestant["name"]
      return name
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0

  data.collect do |season, results|
    results.collect do |contestant|
        if contestant["hometown"] == hometown
          counter += 1
      end
    end
  end
  return counter
end

def get_occupation(data, hometown)
  occupation = nil

  data.collect do |season, results|
    results.collect do |contestant|
    if contestant["hometown"] == hometown
      occupation = contestant["occupation"]
      return occupation
      end
    end
  end
end

def get_average_age_for_season(data, season)

age_total = 0
count = 0

find_age = data[season].collect do |results|
  results["age"].to_f
  end
  age_total = find_age.sum
  count = find_age.count

  answer = (age_total/count)
  return answer.round

end


  # sum_ages =
  # answer = (age/count)
  # return answer.round
