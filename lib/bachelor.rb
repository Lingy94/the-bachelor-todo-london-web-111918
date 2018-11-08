require 'pry'

def get_first_name_of_season_winner(data, season)
  # code here

  data[season].each do |array|
    if array["status"] == "Winner"
      return array["name"].split.first
    end
  end
  data[season]
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
counter = 0
  data.each do |season, array|
    array.each do |stats, data|
      if stats["hometown"] == hometown
        counter += 1
      end
    end
  end
  return counter
end

def get_occupation(data, hometown)
 data.each do |season, array|
    array.each do |stats, data|
      if stats["hometown"] == hometown
        return stats["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  list_of_ages = []
   data[season].each do |stats|
     list_of_ages.push(stats["age"].to_f)
   end
   sum = 0 
   list_of_ages.each do |x|
<<<<<<< HEAD
     sum = sum + x   
     
   end
 
   sum = sum / list_of_ages.size.to_f
   
   return sum.round
=======
     sum + x 
   end
   sum = sum / list_of_ages.size.to_f
   binding.pry
   if sum 
   end
>>>>>>> dc2c4570d0c1b1334fecb68c94d96b8b3b5f603f
end
