#!/usr/bin/env ruby

# problem no. 1:
def multiple_string(str, n)
  return str*n
end
print multiple_string('a', 1),"\n"
print multiple_string('a', 2),"\n"
print multiple_string('a', 3),"\n"
print multiple_string('a', 4),"\n"
print multiple_string('a', 5),"\n"
print multiple_string('a', 6),"\n"


# problem no. 2:
def start_if(str)
    return str[0, 2] == "if";
 end
print start_if("ifthereissession"),"\n"
print start_if("unlessif"),"\n"


# problem no. 3:
def front_back(txt)
    txt[-1] << txt[1...-1] << txt[0]
end
print front_back("BackEnd"),"\n"
print front_back("Java"),"\n"


# problem no. 4:
def temp(str)
    len = str.length() - 1;
	return (str.split('')[len] + str + str.split('')[len]);
end
print temp("abc"),"\n"
print temp("abcd"),"\n"
print temp("java")


# problem no. 5:
year = [2012, 1500, 1600, 2020]
year.each do |y|
  if y % 400 == 0
  	 puts y.to_s + ' is leap year'
    elsif y % 4==0 && y % 100 != 0 
      puts y.to_s + ' is leap year'
  else  puts y.to_s + ' is not leap year'
  end
end


# problem no. 6:
def check_array(nums)
    rotated = nums[1], nums[2], nums[0];
	return rotated;
end
print check_array([1, 2, 5]),"\n" 
print check_array([1, 2, 3]),"\n" 
print check_array([1, 2, 4])


# problem no. 7:
def check_array(nums)
    sum = 0
    i = 0
    while i < nums.length
        if(nums[i] == 17)
            i += 1
        else
            sum += nums[i]
        end
        i += 1
    end
    return sum
end
print check_array([3, 5, 17, 6]),"\n"
print check_array([3, 5, 1, 17]),"\n"
print check_array([3, 17, 1, 7]),"\n"