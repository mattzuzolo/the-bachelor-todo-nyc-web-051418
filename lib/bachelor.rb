require 'pry'

def get_first_name_of_season_winner(data, season)
  
  data[season].each do |details|
    
        if details["status"] == "Winner"
          return details["name"].split(" ").first
        end #end if winner  

  end #end data each
  
end #end method



def get_contestant_name(data, occupation)
    data.each do |season, details|
      details.each do |individual_info|
      
        if individual_info["occupation"] == occupation
          return individual_info["name"]
        end  
      
      end #end details each  
   end #end data each  
end #end method



def count_contestants_by_hometown(data, hometown)
 
  counter = 0
 
  data.each do |season, details|
      details.each do |individual_info|
        
        if individual_info["hometown"] == hometown
            counter += 1
        end  
 
    end #end details each
  end #end data each  
 
 counter
 
end



def get_occupation(data, hometown)
  data.each do |season, details|
      details.each do |individual_info|
        
        if individual_info["hometown"] == hometown
            return individual_info["occupation"]
        end  
 
    end #end details each
  end #end data each  
end




def get_average_age_for_season(data, season)
  
  sum_of_age = 0
  counter = 0
  
  data.each do |season, details|
      details.each do |individual_info|
        
        
       sum_of_age += individual_info["age"].to_f
       counter += 1
        
 
    end #end details each
  end #end data each  
  

  
    average_of_age = (sum_of_age/counter).round(0)
    
    
end













