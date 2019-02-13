require 'pry'
def get_first_name_of_season_winner(data, season)
  winner = nil 
  data.each do |time, info|
    if time == season
      info.each do |personal_info, answer|
        personal_info.each do |type, type_info|
          if type_info == "Winner"
            winner = personal_info["name"].split(" ")
          end 
        end 
      end   
    end 
  end 
  winner[0]
end

def get_contestant_name(data, occupation)
  data.each do |time, array|
    array.each do |personal_info|
      personal_info.each do |type, type_info|
        if type_info == occupation
              return personal_info["name"]
        end 
      end 
    end 
  end 
end

def count_contestants_by_hometown(data, hometown)
  i = 0 
  data.each do |time, array|
    array.each do |personal_info|
      personal_info.each do |type, type_info|
       if type_info == hometown
         i+= 1 
       end 
      end 
    end 
  end 
  i 
end

def get_occupation(data, hometown)
  data.each do |place, array|
    array.each do |personal_info|
      personal_info.each do |type, type_info|
        if type_info == hometown 
          return personal_info["occupation"]
        end 
      end 
    end 
  end 
end


def get_average_age_for_season(data, season)
  # code here
age = 0
count = 0
  data[season].each do |array|
    array.each do |key,value|
      if key == "age"
        count += 1
        age += value.to_f
      end
    end
  end

  answer = (age/count).round
return answer
end
