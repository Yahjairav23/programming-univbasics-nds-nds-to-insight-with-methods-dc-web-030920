require 'pry'

$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input

def gross_for_director(director_data)
  
  gross_income = 0  
  column_index = 0 
  inner_len = directors_database[director_data][:movies].length 
  while column_index < inner_len do
          gross_income += directors_database[director_data][:movies][column_index][:worldwide_gross]
          column_index += 1 
        end 
  return gross_income
   
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
        
      
        
        result[director] = gross_for_director(director_data)
        name_index += 1 
        
      end
      
  row_index +=1
  end


  return result
end
