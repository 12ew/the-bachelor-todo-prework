require 'pry'

def get_first_name_of_season_winner(data, season)
  data.each do |key, value|
    value.each do |x, z|
      # binding.pry

      if x["satus"] == "Winner".capitalize!

        x.each do |k, v|
          # binding.pry
          name = x["name"].split.shift

            return "#{name}" if x["status"] ==  "Winner" && key == "#{season}"

        end
      end
    end
  end
end



def get_contestant_name(data, occupation)
  data.each do |key, value|
    value.each do |x, z|
      # binding.pry

      if x["satus"] == "Winner".capitalize!

        x.each do |k, v|
          # binding.pry
          name = x["name"]

            return "#{name}" if x["occupation"] ==  "#{occupation}"

        end
      end
    end
  end
end



def count_contestants_by_hometown(data, hometown)
  city_count = 0
  data.each do |key, value|
    value.each do |x, z|

        x.each do |k, v|
          if v == "#{hometown}"
          city_count += 1

        end
      end
    end
  end
  city_count
end

def get_occupation(data, hometown)
  data.each do |key, value|
    value.each do |x, z|
      # binding.pry

      # if x["satus"] == "Winner".capitalize!

        x.each do |k, v|
          # binding.pry
          occupation = x["occupation"]

            return "#{occupation}" if x["hometown"] ==  "#{hometown}"

        # end
      end
    end
  end
end



def get_average_age_for_season(data, season)
  age = 0
  count = 0

  data[season].each do |hash|
      age += (hash["age"]).to_i
      count += 1
    end
    (age/count.to_f).round(0)
end

# ---------------------------------
# fix this (below). Only one failing
# ---------------------------------


# def get_average_age_for_season(data, season)
#   age = 0
#   count = 0
#
#   data.each do |key, value|
#     value.each do |x, z|
#
#         x.each do |k, v|
#           # binding.pry
#           if k["age"] == "age"
#             count += 1
#             age += v.to_i
#           end
#         end
#       end
#     end
#     (age/count.to_f).round(0)
#     # binding.pry
# end
