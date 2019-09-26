def nyc_pigeon_organizer(data)
  # write your code here!
  
  newHash = Hash.new
  
  data.each_key {|q| #color/gender/lives
    
    data[q].each_key {|w| #subcategories of above(for example purple/grey/white)
      
      
      w_string = w.to_s #"male"
      
      data[q][w].map {|e| #pigeon names
        
        if (newHash[e])
          
          
          if (newHash[e][q])
            puts "\n\n\n%%%%%%%%%%%%%%%\n\nMade it to if newHash[][]"
            
            if (newHash[e][q].include?(w_string))
            else
              puts "\n\n\n\nmade it here to #{w_string}\n\n\n"
              newHash[e][q].push(w_string)
            end
          else
            newHash[e][q] = []
            newHash[e][q].push(w_string)
            
          
          end
          
          
        else
          newHash[e] = Hash.new
          newHash[e][q] = []
          newHash[e][q].push(w_string)
        end
          
        
              
        
      }
      
    }
  
    
    
  }
  
  newHash
  
end


pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}


nyc_pigeon_organizer(pigeon_data)
