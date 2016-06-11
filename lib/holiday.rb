require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above 
  # add the second argument, which is a supply, to BOTH the 
  # Christmas AND the New Year's arrays
  holiday_hash.each do |k,v|
    if k == :winter
      v.each do |k2,v2|
        v2 << supply
      end
    end
  end
  holiday_hash
end
 

def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash.each do |k,v|
    if k == :spring
      v.each do |k2,v2|
        if k2 == :memorial_day
          v2 << supply
        end
      end
    end
    end
    holiday_hash
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
final = []
  holiday_hash.each do |key,value|
    if key == :winter
      value.each do |k,v|
        final << v
      end
    end
  end
  final.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  temp = ""
  output = ""
  x = 0
  holiday_hash.each do |key, value|
    puts "#{key.capitalize}:"
    value.each do |k, v|
      temp = k.to_s 
      temp = temp.split("_")
      output = " "
      while x < temp.length
          output = output + " #{temp[x].capitalize}"
          x +=1
      end
      output = output +":"
      x=0
      while x < (v.length-1)
        output = output + " #{v[x]},"  
        x += 1
      end
      x=0
      output = output + " #{v.last}"
      puts output
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  final = []
  holiday_hash.each do |key, value|
    value.each do |k,v|
      if v.include?("BBQ")
        final << k
      end
    end
  end
final
end

holiday_hash=  {
    :winter => {
      :christmas => ["Lights", "Wreath"],
      :new_years => ["Party Hats"]
    },
    :summer => {
      :fourth_of_july => ["Fireworks", "BBQ"]
    },
    :fall => {
      :thanksgiving => ["Turkey"]
    },
    :spring => {
      :memorial_day => ["BBQ"]
    }
  }




\





