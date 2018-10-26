require 'pry'

def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each do |array|
    if array["status"] == "Winner"
      return array["name"].split.first
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, array|
    array.each do |stats, data|
      if stats["occupation"] == occupation
        return stats["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
