require 'pry'

def get_first_name_of_season_winner(data, season)
  

  data.each do |season_key, details|
    
    if season_key == season
    
        if data["status"] == "Winner"
          return data["name"].split(" ").first
        end #end if winner  
    
    end #end season if

  end #end data each
  
  #return the first name of specified season's winner
end #end method

#get_first_name_of_season_winner(data, "season 29")

def get_contestant_name(data, occupation)
  # code here
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
