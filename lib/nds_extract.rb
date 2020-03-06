require 'pry'

$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
director_data = directors_database
def gross_for_director(director_data, row_index)
  
  gross_income = 0  
  column_index = 0
  while column_index < director_data[row_index][:movies].length do
          gross_income += director_data[row_index][:movies][column_index][:worldwide_gross]
          column_index += 1 
        end 
        
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
      result = {}  
    
  row_index = 0 
  while row_index < nds.length do
      name_index = 0 
      while name_index < nds[row_index][:name].length do 
        director = nds[row_index][:name]
        
      
        
        result[director] = gross_for_director(director_data, row_index)
        name_index += 1 
        
      end
      
  row_index +=1
  end


  return result
end
