def mix
  vehicles = ["car", "ship", "plane", "submarine", "train"]
  numbers = [1, 2, 3, 4, 5]
  catch :done do
    vehicles.shuffle.each do |vehicle|
      numbers.shuffle.each do |n|
        puts "#{vehicle}, #{n}"
        if vehicle == "ship" && n == 4
          throw :done
        end
      end
    end
  end
end
p mix
=begin
submarine, 2
submarine, 1
submarine, 5
submarine, 4
submarine, 3
plane, 2
plane, 4
plane, 1
plane, 5
plane, 3
ship, 1
ship, 4
nil
=end


ret =
  catch :done do
    throw :done
  end
p ret
# nil


ret =
  catch :done do
    throw :done, "hello"
  end
p ret
# "hello"