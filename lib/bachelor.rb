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
  
  age_array = []
  
  data.each do |season, details|
      details.each do |individual_info|
        
        
       age_array << individual_info["age"]
        
 
    end #end details each
    
    binding.pry
  end #end data each  
  
  
       
      #  individual_info["age"]
       
  
  
    #  age_array.map {|i| i.to_i }
      
  
end














